# This file is part of coffeekit.  for licensing information, see the LICENSE file

class NSWindow extends foundation.NSResponder

  constructor: (handle) ->
    console.log "in NSWindow.ctor handle = " + handle
    super (if handle then handle else objc.allocInstance (@.constructor.name))

  ck.addProperty @::, "title"
  ck.addProperty @::, "contentView"

  makeKeyAndOrderFront: objc.invokeSelector "makeKeyAndOrderFront:"
  initWithCoder: objc.invokeSelector "initWithCoder:"
  setFrame: objc.invokeSelector "setFrame:display:"

new ck.RegisterAttribute NSWindow, "NSWindow"
exports.NSWindow = NSWindow
