
class NSButton extends NSControl
  constructor: (handle) ->
    console.log "NSButton.ctor called with handle #{handle}"
    super (if handle then handle else objc.allocInstance (@.constructor.name))

  ck.addProperty @::, "title"
  ck.addProperty @::, "bezelStyle"
  ck.addProperty @::, "buttonType"

  @::__defineSetter__ "clicked", (v) ->
                                   if v
                                     @proxy = new NSControlProxy v
                                     @target = @proxy
                                     @action = @proxy.proxyAction
                                   else
                                     @proxy = null
                                     @target = null
                                     @action = null

new ck.RegisterAttribute NSButton, "NSButton"
exports.NSButton = NSButton

