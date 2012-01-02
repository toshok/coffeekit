# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSWindowController = class NSWindowController extends foundation.NSResponder
  constructor: (handle, arg2) ->
    if typeof (handle) == 'string'
      super()
      @initWithWindowNibName (arg2)
    else
      super handle

  @instanceProperty "window"

  initWithWindow: @nativeSelector "initWithWindow:"
  initWithWindowNibName: @nativeSelector "initWithWindowNibName:"

  @register()
