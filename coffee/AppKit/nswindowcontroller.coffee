# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSWindowController = class NSWindowController extends foundation.NSResponder
  @register()

  constructor: (handle, arg2) ->
    if typeof (handle) == 'string'
      super()
      @initWithWindowNibName (arg2)
    else
      super handle

  ck.instanceProperty @, "window"

  initWithWindow: objc.invokeSelector "initWithWindow:"
  initWithWindowNibName: objc.invokeSelector "initWithWindowNibName:"
