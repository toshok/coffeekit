class NSResponder extends NSObject

  constructor: (handle) ->
    console.log "NSResponder.ctor called with handle #{handle}"
    super (if handle then handle else objc.allocInstance(@.constructor.name))

new ck.RegisterAttribute NSResponder, "NSResponder"
exports.NSResponder = NSResponder