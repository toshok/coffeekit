# This file is part of coffeekit.  for licensing information, see the LICENSE file

foundation = require "./foundation"

class Attribute
  constructor: (@obj) ->
    Attribute.add obj, this

  @add: (obj, attr) ->
    if !obj._ck_attributes
      obj._ck_attributes = []

    obj._ck_attributes.unshift this

  @find: (obj, attrType) ->
    attrs = if obj._ck_attributes? then obj._ck_attributes else []
    attr for attr in attrs when attr instanceof attrType

exports.Attribute = Attribute

class RegisterAttribute extends Attribute
  constructor: (obj, name) ->
    super obj
    obj._ck_register = name

    objc.internalRegisterJSType obj.prototype, obj._ck_register, if obj.__super__ then obj.__super__.constructor._ck_register else ''
exports.RegisterAttribute = RegisterAttribute

class SelectorAttribute extends Attribute
  constructor: (obj, sel_name, type_sig) ->
    super obj
    obj._ck_exported = true
    obj._ck_sel = sel_name
    obj._ck_typeSig = type_sig ? "@@:"
exports.SelectorAttribute = SelectorAttribute

exports.exposeSelector = (sel_name, rest...) ->
  if rest.length > 1
    type_sig = rest[0]
    fn = rest[1]
  else if rest.length == 1
    type_sig = null
    fn = rest[0]
  else
    throw "exposeSelector requires the function to expose"

  new SelectorAttribute fn, sel_name, type_sig
  fn

class MixinProtocolAttribute extends Attribute
  constructor: (obj, protocol) ->
    super obj

    for key, value of protocol
      if protocol.hasOwnProperty key
        # class/static
        if value.required
          if value.method
            console.log "adding class protocol method #{key}"
            if value.tramp?
              obj[key] = value.tramp
            else
              obj[key] = objc.invokeSelector value.method
            obj[key]._ck_typeSig = value.sig ? "@@:"
          else if value.property
            console.log "adding class protocol property #{key}"
            accessors = {}
            if value.get
              accessors.get = value.get
            if value.set
              accessors.set = value.set
            addProperty obj, value.property, accessors
      else
        # instance
        if value.required
          if value.method
            console.log "adding instance protocol method #{key}"
            if value.tramp
              obj::[key] = value.tramp
            else
              obj::[key] = objc.invokeSelector value.method
            obj::[key]._ck_typeSig = value.sig ? "@@:"
          else if value.property
            console.log "adding instance protocol property #{key}"
            addProperty obj::, value.property

exports.MixinProtocolAttribute = MixinProtocolAttribute

class ConformsToProtocolAttribute extends Attribute
  constructor: (obj, @protocol) ->
    super obj

    # FIXME
    #   there's not much that's necessary here..  if the attribute is present
    #   we need to synthesize a conformsToProtocol: method which will iterate all
    #   CTPA's and return yes/no.
    #
    # we should also probably verify that required methods are implemented?  maybe not?...
    #
    console.log "need to implement ConformsToProtocolAttribute"

  @doesObjectConformTo: (obj, protocol) ->
    return (conforms for conforms in (Attribute.find obj, ConformsToProtocolAttribute) when conforms.protocol is protocol).length > 0

exports.ConformsToProtocolAttribute = ConformsToProtocolAttribute


autoboxCount = 0
autobox = (obj, protocol) ->
  class ProtocolProxy extends foundation.NSObject
    constructor: () -> super (objc.allocInstance @.constructor._ck_register)

  # check if the object (or its constructor) conforms to the protocol.  if it does
  # then we can just use the object, without the proxy
  if (ConformsToProtocolAttribute.doesObjectConformTo obj, protocol) or (ConformsToProtocolAttribute.doesObjectConformTo obj.constructor, protocol)
    return obj
  
  # first check for required methods.  if obj doesn't implement them, error out.
  for key, value of protocol
    if protocol.hasOwnProperty key
        # class/static
        # nothing for now XXX
    else
        # instance
        if value.required
          if value.method and !obj[key]
            throw "#{obj} is missing required method #{key} from protocol #{protocol}"
          if value.property and !obj[key]
            throw "#{obj} is missing required property #{key} from protocol #{protocol}"

  # now loop over the items that are in obj and match up the names to those in the protocol
  for key, value of obj
    if pv = protocol::[key]
      if pv.method
        addProxyMethod = (k, v) ->
          console.log "adding proxy method for #{k}, v.length = #{v.length}"
          switch v.length
            when 0 then ProtocolProxy::[k] = () -> v.call obj
            when 1 then ProtocolProxy::[k] = (a1) -> v.call obj, a1
            when 2 then ProtocolProxy::[k] = (a1,a2) -> v.call obj, a1, a2
            when 3 then ProtocolProxy::[k] = (a1,a2,a3) -> v.call obj, a1, a2, a3
            when 4 then ProtocolProxy::[k] = (a1,a2,a3,a4) -> v.call obj, a1, a2, a3, a4
            when 5 then ProtocolProxy::[k] = (a1,a2,a3,a4,a5) -> v.call obj, a1, a2, a3, a4, a5
            when 6 then ProtocolProxy::[k] = (a1,a2,a3,a4,a5,a6) -> v.call obj, a1, a2, a3, a4, a5, a6
            when 7 then ProtocolProxy::[k] = (a1,a2,a3,a4,a5,a6,a7) -> v.call obj, a1, a2, a3, a4, a5, a6, a7
            when 8 then ProtocolProxy::[k] = (a1,a2,a3,a4,a5,a6,a7,a8) -> v.call obj, a1, a2, a3, a4, a5, a6, a7, a8
            when 9 then ProtocolProxy::[k] = (a1,a2,a3,a4,a5,a6,a7,a8,a9) -> v.call obj, a1, a2, a3, a4, a5, a6, a7, a8, a9
            when 10 then ProtocolProxy::[k] = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10) -> v.call obj, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10
            else throw "addProxyMethod doesn't support methods with #{v.length} arguments."
          new SelectorAttribute ProtocolProxy::[k], pv.method, pv.sig
        
        addProxyMethod key, value
      else
        throw "unhandled case:  property #{key} overriding from a protocol #{protocol}"

  new RegisterAttribute ProtocolProxy, "CKProtocolProxy#{autoboxCount++}"

  return new ProtocolProxy
exports.autobox = autobox  

addProperty = (obj, jsprop, opts) ->
  # if opts are left off, and jsprop = 'foo',
  # we assume the getter is 'foo' and the setter is
  # 'setFoo'
  if typeof opts is "undefined"
    obj.__defineGetter__ jsprop, getter = objc.invokeSelector (jsprop)
    obj.__defineSetter__ jsprop, setter = objc.invokeSelector ("set" + jsprop[0].toUpperCase() + (jsprop.slice 1) + ":")
  else
    # the value for the set/get members of opts overrides this above behavior.
    # 
    # that is, if an attribute is missing, we default to the same behavior as above.  if
    # it is present and null, we don't add it.  so, to generate a read-only property with
    # the default getter name, pass { set: null }
    if "get" of opts
      if opts.get
        if typeof opts.get is 'string'
          obj.__defineGetter__ jsprop, getter = objc.invokeSelector (opts.get)
        else if typeof opts.get is 'function'
          obj.__defineGetter__ jsprop, getter = opts.get
        else
          throw "you can only use a string or a function for get:"
    else
      obj.__defineGetter__ jsprop, getter = objc.invokeSelector (jsprop)

    if "set" of opts
      if opts.set
        if typeof opts.set is 'string'
          obj.__defineSetter__ jsprop, setter = objc.invokeSelector (opts.set)
        else if typeof opts.set is 'function'
          obj.__defineSetter__ jsprop, setter = opts.set
        else
          throw "you can only use a string or a function for set:"
    else
      obj.__defineSetter__ jsprop, setter = objc.invokeSelector ("set" + jsprop[0].toUpperCase() + (jsprop.slice 1) + ":")

  return getter: getter, setter: setter, makeUIAppearance: ->
                                           if setter
                                             setter._ck_appearance = true
                                           if getter
                                             getter._ck_appearance = true

exports.addProperty = addProperty

exports.instanceProperty = (cls, jsprop, opts) ->
  addProperty cls::, jsprop, opts

exports.staticProperty = (cls, jsprop, opts) ->
  addProperty cls, jsprop, opts


addConstant = (obj, jsprop, v) ->
  obj.__defineGetter__ jsprop, -> v
exports.addConstant = addConstant

objcIBOutlet = (obj, jsprop, ctor) -> 
  # this needs to define the ivar at class registration time.  we add
  # the ivar attribute to the getter since it has the proper name

  getter = -> new ctor (objc.getInstanceVariable this, jsprop)
  getter._ck_ivar = jsprop

  obj.__defineGetter__ jsprop, getter
  obj.__defineSetter__ jsprop, (v) -> objc.setInstanceVariable this, jsprop, v

exports.objcIBOutlet = objcIBOutlet
