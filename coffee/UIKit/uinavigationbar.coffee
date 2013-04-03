# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UINavigationBar"
exports.UINavigationBar = class UINavigationBar extends UIView
  # Configuring Navigation Bars
  @instanceProperty "barStyle"
  @instanceProperty "translucent"

  # Assigning the Delegate
  @autoboxProperty "delegate", UINavigationBarDelegate

  # Pushing and Popping Items
  pushNavigationItem: @nativeSelector "pushNavigationItem:animated:"
  popNavigationItem:  @nativeSelector "popNavigationItemAnimated:"
  setItems:           @nativeSelector "setItems:animated:"
  @instanceProperty "items", { set: (v) -> @setItems v, false }
  @instanceProperty "topItem"
  @instanceProperty "backItem"

  # Customizing the Bar Appearance
  backgroundImage:                    @nativeSelector "backgroundImageForBarMetrics:"
  setBackgroundImage:                 @nativeSelector "setBackgroundImage:forBarMetrics:"
  titleVerticalPositionAdjustment:    @nativeSelector "titleVerticalPositionAdjustmentForBarMetrics:"
  setTitleVerticalPositionAdjustment: @nativeSelector "setTitleVerticalPositionAdjustment:forBarMetrics:"
  @instanceProperty "tintColor"
  @instanceProperty "titleTextAttributes"

  @register()
