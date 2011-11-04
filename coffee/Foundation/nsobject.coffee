class NSObject extends CoffeeKitObject

  constructor: (handle) ->
    console.log "NSObject.ctor called with handle #{handle}"
    @handle = if handle then handle else objc.allocInstance(@.constructor.name)
    console.log "@handle = #{@handle}"
    CoffeeKitObject.setHandle.call this, @handle

new ck.RegisterAttribute NSObject, "NSObject"
exports.NSObject = NSObject

