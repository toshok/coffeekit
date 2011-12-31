# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIWindow"
exports.UIWindow = class UIWindow extends UIView
  @register()

  # Configuring Windows
  ck.instanceProperty @, "windowLevel"
  ck.instanceProperty @, "screen"
  ck.instanceProperty @, "rootViewController"

  # Making Windows Key
  ck.instanceProperty @, "keyWindow"
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
