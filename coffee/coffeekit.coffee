# This file is part of coffeekit.  for licensing information, see the LICENSE file

objc = require "objc"
foundation = require "foundation"

console.log "coffeekit"

registerMembers = (o, c) ->
        for name in Object.getOwnPropertyNames o
                desc = Object.getOwnPropertyDescriptor o, name

                console.log "o[#{name}] = #{desc}"
                # skip properties
                continue if desc.set? or desc.get?

                # XXX for some reason NSResponder's constructor is coming up with a _ck_register = NSObject.  wtf?
                continue if name is 'constructor'
                
                impl = o[name]
                if impl?._ck_register?
                        o[name] = impl._ck_register c, name
                if impl?._ck_registerProp?
                        impl._ck_registerProp c, name

exports.Attribute = class Attribute
        constructor: (@obj) ->
                Attribute.add obj, @

        @add: (obj, attr) ->
                obj._ck_attributes = [] if not obj._ck_attributes?
                obj._ck_attributes.unshift attr

        @find: (obj, attrType) ->
                attrs = if obj._ck_attributes? then obj._ck_attributes else []
                attr for attr in attrs when attr instanceof attrType

exports.register = (obj, name = obj.name) ->
        console.log "registering #{name}"

        # prepare the instance methods
        registerMembers obj.prototype, obj

        # prepare static methods
        registerMembers obj, obj

        # register the class with objective-c
        new RegisterAttribute obj, name

exports.RegisterAttribute = class RegisterAttribute extends Attribute
        constructor: (obj, name = obj.name) ->
                super obj
                obj._ck_register = name

                superclass_name = if obj.__super__?.constructor?._ck_register? then obj.__super__.constructor._ck_register else ''
                
                #console.log "registering #{obj._ck_register}, subclass of #{if obj.__super__ then obj.__super__.constructor._ck_register else ''}"
                objc.registerJSClass obj, obj.prototype, obj._ck_register, superclass_name

exports.SelectorAttribute = class SelectorAttribute extends Attribute
        constructor: (obj, sel_name, type_sig) ->
                super obj
                obj._ck_exported = yes
                obj._ck_sel = sel_name
                obj._ck_typeSig = type_sig ? "@@:"

exports.exposeSelector = (sel_name, rest...) ->
        throw "exposeSelector requires the function to expose" if rest.length is 0
        
        if rest.length > 1
                type_sig = rest[0]
                fn = rest[1]
        else
                type_sig = null
                fn = rest[0]
                
        new SelectorAttribute fn, sel_name, type_sig
        fn

invokeSelector = (sel) ->
        sel_invoke = objc.invokeSelector sel
        () ->
                console.log "invoking selector #{sel} on object #{@}"
                sel_invoke.apply @, [sel].concat Array::slice.call(arguments)

exports.MixinProtocolAttribute = class MixinProtocolAttribute extends Attribute
        constructor: (obj, protocol) ->
                super obj

        for key, value of protocol
                if protocol.hasOwnProperty key
                        # class/static
                        if value.required
                                if value.method
                                        console.log "adding class protocol method #{key}"
                                        obj[key] = if value.tramp? then value.tramp else invokeSelector value.method
                                        obj[key]._ck_typeSig = value.sig ? "@@:"
                                else if value.property
                                        console.log "adding class protocol property #{key}"
                                        accessors = {}
                                        accessors.get = value.get if value.get?
                                        accessors.set = value.set if value.set?
                                        addProperty obj, value.property, accessors
                else
                        # instance
                        if value.required
                                if value.method
                                        console.log "adding instance protocol method #{key}"
                                        obj::[key] = if value.tramp? then value.tramp else invokeSelector value.method
                                        obj::[key]._ck_typeSig = value.sig ? "@@:"
                                else if value.property
                                        console.log "adding instance protocol property #{key}"
                                        addProperty obj::, value.property

exports.ConformsToProtocolAttribute = class ConformsToProtocolAttribute extends Attribute
        constructor: (obj, @protocol) ->
                super obj

                console.log "ConformsToProtocolAttribute obj = #{obj}, protocol = #{@protocol}"

                for key, value of @protocol::
                        console.log "protocol key = #{key}: #{JSON.stringify value}"
                        if key is 'constructor'
                                continue
                        if @protocol.hasOwnProperty key
                                # class/static
                        else
                                # instance
                                fn = obj::[key]
                                if fn?
                                        console.log "  found it!"
                                        fn._ckProtocolInfo = sel: value.method, sig: value.sig
                                #else
                                #        console.log "  didn't find it!"

                # FIXME
                #   there's not much more that's necessary here..  if the attribute is present
                #   we need to synthesize a conformsToProtocol: method which will iterate all
                #   CTPA's and return yes/no.
                #
                # we should also probably verify that required methods are implemented?  maybe not?...
                #
                console.log "need to implement ConformsToProtocolAttribute"

        @doesObjectConformTo: (obj, protocol) ->
                return (conforms for conforms in (Attribute.find obj, ConformsToProtocolAttribute) when conforms.protocol is protocol).length > 0

# save ourselves some long lines with this function
does_not_conform_to = (o, p) -> ConformsToProtocolAttribute.doesObjectConformTo o, p
        
autoboxCount = 0
exports.autobox = (obj, protocol) ->
        console.log 1000
        class ProtocolProxy extends foundation.NSObject
                constructor: () -> super (objc.allocInstance @constructor._ck_register)

        console.log 1001
        # check if the object (or its constructor) conforms to the protocol.  if it does
        # then we can just use the object, without the proxy
        return obj if (does_not_conform_to obj, protocol) or (does_not_conform_to obj.constructor, protocol)

        console.log 1002
        # first check for required methods.  if obj doesn't implement them, error out.
        for key, value of protocol
                if protocol.hasOwnProperty key
                        # class/static
                        # nothing for now XXX
                else
                        # instance
                        if value.required and not obj[key]
                                throw "#{obj} is missing required method #{key} from protocol #{protocol}" if value.method?
                                throw "#{obj} is missing required property #{key} from protocol #{protocol}" if value.property?
                  
        console.log 1003

        console.log 1004
        # now loop over the items that are in obj and match up the names to those in the protocol
        for key, value of obj
                pv = protocol::[key]
                
                continue if not pv?
                
                if pv.method?
                        ProtocolProxy::[key] = value.bind obj
                        new SelectorAttribute ProtocolProxy::[key], pv.method, pv.sig
                else
                        throw "unhandled case:  property #{key} overriding from a protocol #{protocol}"

        console.log 1005
        new ConformsToProtocolAttribute ProtocolProxy, protocol
        new RegisterAttribute ProtocolProxy, "CKProtocolProxy#{autoboxCount++}"

        console.log 1006
        return new ProtocolProxy

addProperty = (obj, jsprop, opts) ->
        info = {}
        info._ck_registerProp = ->
                console.log "addProperty for #{jsprop}"
                # if opts are left off, and jsprop = 'foo',
                # we assume the getter is 'foo' and the setter is
                # 'setFoo:'
                getter = null
                setter = null

                if opts is undefined
                        console.log "no opts for #{jsprop}"
                        getter = invokeSelector jsprop
                        console.log "getter = #{getter.toString()}"
                        setter = invokeSelector "set#{jsprop[0].toUpperCase()}#{jsprop.slice 1}:"
                else
                        # the value for the set/get members of opts overrides this above behavior.
                        # 
                        # that is, if an attribute is missing, we default to the same behavior as above.  if
                        # it is present and null, we don't add it.  so, to generate a read-only property with
                        # the default getter name, pass { set: null }
                        if "get" of opts
                                if opts.get?
                                        if typeof opts.get is 'string'
                                                getter = invokeSelector opts.get
                                        else if typeof opts.get is 'function'
                                                getter = opts.get
                                        else
                                                throw "you can only use a string or a function for get:"
                        else
                                getter = invokeSelector jsprop

                        if "set" of opts
                                if opts.set?
                                        if typeof opts.set is 'string'
                                                setter = invokeSelector opts.set
                                        else if typeof opts.set is 'function'
                                                setter = opts.set
                                        else
                                                throw "you can only use a string or a function for set:"
                        else
                                setter = invokeSelector "set#{jsprop[0].toUpperCase()}#{jsprop.slice 1}:"

                        if "ivar" of opts
                                setter._ck_ivar = opts.ivar if setter?
                                getter._ck_ivar = opts.ivar if getter?

                descriptor = enumerable: yes
                descriptor.set = setter if setter?
                descriptor.get = getter if getter?

                console.log "getter for obj = #{obj.constructor?.name} #{jsprop} = #{getter}" if getter?

                Object.defineProperty obj, jsprop, descriptor

        info.makeUIAppearance = ->
                setter._ck_appearance = yes if setter?
                getter._ck_appearance = yes if getter?

        obj[jsprop] = info
        
exports.addProperty = addProperty

exports.invokeSelector = invokeSelector
        
exports.instanceProperty = (cls, jsprop, opts) -> addProperty cls::, jsprop, opts

exports.staticProperty = (cls, jsprop, opts) -> addProperty cls, jsprop, opts

exports.makeEnum = (spec) ->
        addConstant = (obj, jsprop, v) -> Object.defineProperty obj, jsprop, value: v, enumerable: yes

        rv = Object.create null
        addConstant rv, name, value for name, value of spec
        rv

exports.outlet = outlet = (obj, jsprop, outletType) ->
        console.log "outlet #{jsprop} has ctor = #{outletType.name}"
        propinfo = 
        addProperty obj, jsprop, {
                get: ->
                        #console.log "in getter for #{jsprop}, @ = #{@::constructor.name}"
                        new outletType (objc.getInstanceVariable @, jsprop)
                        
                set: (v) ->
                        #console.log "in setter for #{jsprop}, @ = #{@::constructor.name}"
                        objc.setInstanceVariable @, jsprop, v

                ivar: jsprop
        }

exports.sig =
        Class:    -> "#"
        Selector: -> ":"
        Char:     -> "c"
        UChar:    -> "C"
        Short:    -> "s"
        UShort:   -> "S"
        Int:      -> "i"
        UInt:     -> "I"
        Long:     -> "l"
        ULong:    -> "L"
        LongLong: -> "q"
        ULongLong: -> "Q"
        Float:    -> "f"
        Double:   -> "d"
        Bool:     -> "c"  # objective c's type signatures permit a 'B' which is BOOL, but it looks like the bindings all use 'c' for bool instead. :/
        Void:     -> "v"
        Ptr:      -> "^"
        CharStar: -> "*"
        NSString: -> "@"
        ArrayOf: (s) -> (-> "[#{exports.typeSignature [s]}]")
        PointerTo: (s) -> (-> "^#{exports.typeSignature [s]}")
        # some things we're hardcoding here until/unless we move them into their respective bindings
        CVTimeStamp: -> "{?=IiqQdq{CVSMPTETime=ssIIIssss}QQ}"
        CGAffineTransform: -> "{CGAffineTransform=ffffff}"
        CGContext: -> "{CGContext=}"


exports.typeSignature = (types) ->
        getTypeSignature = (t) ->
                return t.getTypeSignature() if t.getTypeSignature?
                return t() if typeof t is 'function'
                throw "unable to find a type signature mapping for type #{t}"
        (getTypeSignature(t) for t in types).join ''
