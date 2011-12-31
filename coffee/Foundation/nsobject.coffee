# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSObject = class NSObject extends CoffeeKitObject
  @alloc: () -> objc.allocInstance @.name
  @register: (n = @.name) -> new ck.RegisterAttribute @, n
  @mixinProtocol: (p) -> new ck.MixinProtocolAttribute @, p

  constructor: (@handle = @.constructor.alloc()) ->
    CoffeeKitObject.setHandle.call this, @handle

  toString: -> "[#{@constructor._ck_register} #{@handle}]"

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