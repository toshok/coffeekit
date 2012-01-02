# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "NSObject"

exports.NSObject = class NSObject extends CoffeeKitObject
  @getTypeSignature: -> "@"

  @alloc: () -> objc.allocInstance @.name
  @mixinProtocol: (p) -> new ck.MixinProtocolAttribute @, p
  @conformsToProtocol: (p) -> new ck.ConformsToProtocolAttribute @, p
  @register: (n = @.name) ->
    for name of @::
      # skip properties
      if (@::__lookupGetter__ name) or (@::__lookupSetter__ name)
        continue
      # XXX for some reason NSResponder's constructor is coming up with a _ck_register = NSObject.  wtf?
      if name is 'constructor'
        continue
      impl = @::[name]
      if impl._ck_register?
        @::[name] = impl._ck_register @, name
    new ck.RegisterAttribute @, n

  @nativeSelector: (sel, body) ->
    if body?
      f = body
      f._ck_register = (c, name) ->
        if f._ckInfo.returnTypeGetter?
          paramTypes = if f._ckInfo.paramTypesGetter? then f._ckInfo.paramTypesGetter() else []
          sig = ck.typeSignature([f._ckInfo.returnTypeGetter(), NSObject, ck.sig.Selector].concat paramTypes)
        else
          sig = "@@:" # is this a reasonable thing to default to?
        new ck.SelectorAttribute f, sel, sig
        f
    else
      f = objc.invokeSelector (sel)
    f._ckInfo = sel: sel
    f.returnType = (fn) ->
      f._ckInfo.returnTypeGetter = fn
      f
    f.paramTypes = (fn) ->
      f._ckInfo.paramTypesGetter = fn
      f
    f

  @override: (fn) ->
    fn._ck_register = (c, name) ->

      proto = c.__super__?.constructor.prototype
      if not fn._ckProtocolInfo and not proto[name]?._ckInfo?
        throw "native selector '#{name}' not found in prototype chain for type '#{c.name}'"

      if fn._ckProtocolInfo
        new ck.SelectorAttribute fn, fn._ckProtocolInfo.sel, fn._ckProtocolInfo.sig
      else
        fn._ckInfo = proto[name]._ckInfo

        if fn._ckInfo.returnTypeGetter?
          paramTypes = if fn._ckInfo.paramTypesGetter? then fn._ckInfo.paramTypesGetter() else []
          sig = ck.typeSignature([fn._ckInfo.returnTypeGetter(), NSObject, ck.sig.Selector].concat paramTypes)
        else
          sig = "@@:" # is this a reasonable thing to default to?
        new ck.SelectorAttribute fn, fn._ckInfo.sel, sig
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
