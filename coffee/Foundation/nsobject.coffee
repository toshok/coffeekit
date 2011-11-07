# This file is part of coffeekit.  for licensing information, see the LICENSE file

class NSObject extends CoffeeKitObject

  constructor: (handle) ->
    @handle = if handle then handle else objc.allocInstance(@.constructor.name)
    CoffeeKitObject.setHandle.call this, @handle

  toString: -> "[#{@constructor._ck_register} #{@handle}]"

new ck.RegisterAttribute NSObject, "NSObject"
exports.NSObject = NSObject

