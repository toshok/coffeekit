# This file is part of coffeekit.  for licensing information, see the LICENSE file

foundation = require "./foundation"

class Attribute
  constructor: (@obj) ->
    Attribute.add obj, this

  @add: (obj, attr) ->
    if !obj._ck_attributes
      obj._ck_attributes = []

    obj._ck_attributes.unshift this
exports.Attribute = Attribute

class RegisterAttribute extends Attribute
  constructor: (obj, name) ->
    super obj
    obj._ck_register = name
    objc.internalRegisterJSType obj.prototype, obj._ck_register, if obj.__super__ then obj.__super__.constructor._ck_register else ''
exports.RegisterAttribute = RegisterAttribute

class SelectorAttribute extends Attribute
  constructor: (obj, sel_name) ->
    super obj
    obj._ck_exported = true
    obj._ck_sel = sel_name
exports.SelectorAttribute = SelectorAttribute

class MixinProtocolAttribute extends Attribute
  constructor: (obj, protocol) ->
    super obj

    for key, value of protocol
      if protocol.hasOwnProperty key
        # class/static
        if value.required
          if value.method
            console.log "adding class protocol method #{key}"
            if value.tramp
              obj[key] = value.tramp
            else
              obj[key] = objc.invokeSelector value.method
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
          else if value.property
            console.log "adding instance protocol property #{key}"
            addProperty obj::, value.property

exports.MixinProtocolAttribute = MixinProtocolAttribute

class ConformsToProtocolAttribute extends Attribute
  constructor: (obj, protocol) ->
    super obj
    # FIXME
    #   there's not much that's necessary here..  if the attribute is present
    #   we need to synthesize a conformsToProtocol: method which will iterate all
    #   CTPA's and return yes/no.
    #
    console.log "need to implement ConformsToProtocolAttribute"
exports.ConformsToProtocolAttribute = ConformsToProtocolAttribute


autoboxCount = 0
autobox = (obj, protocol) ->
  class ProtocolProxy extends foundation.NSObject
    constructor: () -> super (objc.allocInstance @.constructor._ck_register)

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
        ProtocolProxy::[key] = (args...) -> value.call obj, args...
        new SelectorAttribute ProtocolProxy::[key], pv.method
      else
        throw "unhandled case:  property #{key} overriding from a protocol #{protocol}"

  new RegisterAttribute ProtocolProxy, "CKProtocolProxy#{autoboxCount++}"

  return new ProtocolProxy
exports.autobox = autobox  

addProperty = (obj, jsprop, opts) ->
  # handle autoboxing here.
  #if opts?.autobox
  #  if obj instanceof opts.autobox
  #    # do nothing, it's already a subclass
  #  else
  #    # we need to autobox it..  let's just assume that we don't have a setter method.  that'll complicate things
  #    obj.__defineGetter__ jsprop, getter = objc.invokeSelector (jsprop)
  #    obj.__defineSetter__ jsprop, setter = (v) -> 
  #      proxy = autobox v, opts.autobox 
  #      objc.invokeSelector("set" + jsprop[0].toUpperCase() + (jsprop.slice 1) + ":") proxy
  #    return # XXX there is going to be more here...

  # if opts are left off, and jsprop = 'foo',
  # we assume the getter is 'foo' and the setter is
  # 'setFoo'
  if !opts
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
          console.log "adding property #{jsprop} using a string"
          obj.__defineGetter__ jsprop, getter = objc.invokeSelector (opts.get)
        else if typeof opts.get is 'function'
          console.log "adding property #{jsprop} using a getter"
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

objcIBOutlet = (obj, jsprop, ctor) -> 
  # this needs to define the ivar at class registration time.  we add
  # the ivar attribute to the getter since it has the proper name

  getter = -> new ctor (objc.getInstanceVariable this, jsprop)
  getter._ck_ivar = jsprop

  obj.__defineGetter__ jsprop, getter
  obj.__defineSetter__ jsprop, (v) -> objc.setInstanceVariable this, jsprop, v

exports.objcIBOutlet = objcIBOutlet