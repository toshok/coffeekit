# This file is part of coffeekit.  for licensing information, see the LICENSE file

# console.log "NSObject"

registerMembers = (o, c) ->
    for name of o
      # skip properties
      if (o.__lookupGetter__ name) or (o.__lookupSetter__ name)
        continue
      # XXX for some reason NSResponder's constructor is coming up with a _ck_register = NSObject.  wtf?
      if name is 'constructor'
        continue
      impl = o[name]
      if impl?._ck_register?
        o[name] = impl._ck_register c, name

exports.NSObject = class NSObject extends CoffeeKitObject
  @getTypeSignature: -> "@"

  @alloc: () -> objc.allocInstance @.name
  @mixinProtocol: (p) -> new ck.MixinProtocolAttribute @, p
  @conformsToProtocol: (p) -> new ck.ConformsToProtocolAttribute @, p

  @register: (n = @.name) ->
    # prepare the instance methods
    registerMembers @::, @

    # prepare static methods
    registerMembers @, @

    # register the class with objective-c
    new ck.RegisterAttribute @, n

  @nativeSelector: (sel) ->
    info = sel: sel

    info.returnType = (fn) ->
      info.returnTypeGetter = fn
      info
    info.paramTypes = (fn) ->
      info.paramTypesGetter = fn
      info
    info.makeUIAppearance = (fn) ->
      info._ck_appearance = true
      info
    info.impl = (fn) ->
      info.body = fn
      info
    info._ck_register = (c, name) ->
        info.declaringType = c

        install_selector_attribute = no

        if not info.body?
          f = objc.invokeSelector info.sel
        else
          f = info.body
          install_selector_attribute = yes

        if info.returnTypeGetter?
          paramTypes = if info.paramTypesGetter? then info.paramTypesGetter() else []
          try
            sig = ck.typeSignature([info.returnTypeGetter(), NSObject, ck.sig.Selector].concat paramTypes)
          catch error
            console.log "error in type specification for #{c.name} #{sel}: #{error}"
        else
          sig = "@@:" # is this a reasonable thing to default to?

        if install_selector_attribute
          new ck.SelectorAttribute f, sel, sig
        else
          f._typeSig = sig

        f._ck_appearance = info._ck_appearance
        f._ckInfo = info
        delete info._ck_register
        f
    info

  @override: (fn) ->
    fn._ck_register = (c, name) ->

      proto = c.__super__?.constructor.prototype
      if not fn._ckProtocolInfo and not proto[name]?._ckInfo?
        throw "native selector '#{name}' not found in prototype chain for type '#{c.name}'"

      if fn._ckProtocolInfo
        new ck.SelectorAttribute fn, fn._ckProtocolInfo.sel, fn._ckProtocolInfo.sig
        fn._ck_appearance = fn._ckProtocolInfo._ck_appearance
      else
        fn._ckInfo = proto[name]._ckInfo

        if fn._ckInfo.returnTypeGetter?
          paramTypes = if fn._ckInfo.paramTypesGetter? then fn._ckInfo.paramTypesGetter() else []
          sig = ck.typeSignature([fn._ckInfo.returnTypeGetter(), NSObject, ck.sig.Selector].concat paramTypes)
        else
          sig = "@@:" # is this a reasonable thing to default to?
        new ck.SelectorAttribute fn, fn._ckInfo.sel, sig
        fn._ck_appearance = fn._ckInfo._ck_appearance
      delete fn._ck_register
      fn
    fn

  @instanceProperty: (jsprop, opts) -> ck.instanceProperty @, jsprop, opts

  @staticProperty: (jsprop, opts) -> ck.staticProperty @, jsprop, opts

  @autoboxProperty: (jsprop, type) -> @instanceProperty jsprop, { set: (v) -> objc.invokeSelector("set" + jsprop[0].toUpperCase() + (jsprop.slice 1) + ":").call this, (ck.autobox v, type) }

  @newWith: (newInfo) ->
    info = for method of newInfo
      method

    if info.length isnt 1
      throw "NSObject.newWith can only be passed 1 element in the hash"

    meth = @::["init#{method}"];
    if (typeof meth) isnt 'function'
      throw "no method 'init#{method}' defined in #{@.name}.prototype"

    instance = new global[@.constructor.name]

    meth.call instance, args

    instance

  constructor: (@handle = @constructor.alloc()) ->
    CoffeeKitObject.setHandle.call this, @handle

  toString: -> "[#{@constructor._ck_register} #{@handle}]"

  @register()
