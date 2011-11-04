class NSWindow extends foundation.NSResponder

  constructor: (handle) ->
    console.log "in NSWindow.ctor handle = " + handle
    super (if handle then handle else objc.allocInstance (@.constructor.name))

  toString: -> "[NSWindow #{@handle}]"

  ck.addProperty @::, "title"
  ck.addProperty @::, "contentView"

  makeKeyAndOrderFront: objc.invokeSelector "makeKeyAndOrderFront:"
  initWithCoder: objc.invokeSelector "initWithCoder:"
  setFrame: objc.invokeSelector "setFrame:display:"

new ck.RegisterAttribute NSWindow, "NSWindow"
exports.NSWindow = NSWindow

