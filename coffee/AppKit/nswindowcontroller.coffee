class NSWindowController extends foundation.NSResponder

  constructor: (handle, arg2) ->
    if typeof (handle) == 'string'
      super objc.allocInstance(handle)
      @initWithWindowNibName (arg2)
    else
      super (if handle then handle else objc.allocInstance (@.constructor.name))

  ck.addProperty @::, "window"

  initWithWindow: objc.invokeSelector "initWithWindow:"
  initWithWindowNibName: objc.invokeSelector "initWithWindowNibName:"

new ck.RegisterAttribute NSWindowController, "NSWindowController"
exports.NSWindowController = NSWindowController
