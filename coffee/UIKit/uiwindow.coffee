# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIWindow"
exports.UIWindow = class UIWindow extends UIView
  # Configuring Windows
  @instanceProperty "windowLevel"
  @instanceProperty "screen"
  @instanceProperty "rootViewController"

  # Making Windows Key
  @instanceProperty "keyWindow"
  makeKeyAndVisible: @nativeSelector "makeKeyAndVisible"
  becomeKeyWindow:   @nativeSelector "becomeKeyWindow"
  makeKeyWindow:     @nativeSelector "makeKeyWindow"
  resignKeyWindow:   @nativeSelector "resignKeyWindow"

  # Converting Coordinates
  convertPointToWindow:   @nativeSelector "convertPoint:toWindow:"
  convertPointFromWindow: @nativeSelector "convertPoint:fromWindow:"
  convertRectToWindow:    @nativeSelector "convertRect:toWindow:"
  convertRectFromWindow:  @nativeSelector "convertRect:fromWindow:"

  # Sending Events
  sendEvent:              @nativeSelector "sendEvent:"

  @register()
