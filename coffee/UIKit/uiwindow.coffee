# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIWindow"
class UIWindow extends UIView

  constructor: (handle) ->
    super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Configuring Windows
  ck.addProperty @::, "windowLevel"
  ck.addProperty @::, "screen"
  ck.addProperty @::, "rootViewController"

  # Making Windows Key
  ck.addProperty @::, "keyWindow"
  makeKeyAndVisible: objc.invokeSelector "makeKeyAndVisible"
  becomeKeyWindow: objc.invokeSelector "becomeKeyWindow"
  makeKeyWindow: objc.invokeSelector "makeKeyWindow"
  resignKeyWindow: objc.invokeSelector "resignKeyWindow"

  # Converting Coordinates
  convertPointToWindow: objc.invokeSelector "convertPoint:toWindow:"
  convertPointFromWindow: objc.invokeSelector "convertPoint:fromWindow:"
  convertRectToWindow: objc.invokeSelector "convertRect:toWindow:"
  convertRectFromWindow: objc.invokeSelector "convertRect:fromWindow:"

  # Sending Events
  sendEvent: objc.invokeSelector "sendEvent:"

new ck.RegisterAttribute UIWindow, "UIWindow"
exports.UIWindow = UIWindow
