# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITabBar"
exports.UITabBar = class UITabBar extends UIView
  # Getting and Setting Properties
  @autoboxProperty "delegate", UITabBarDelegate

  # Configuring Items
  setItems: @nativeSelector "setItems:animated:"
  @instanceProperty "items", { set: (v) -> @setItems v, false }
  @instanceProperty "selectedItem"

  # Customizing Tab Bars
  beginCustomizingItems: @nativeSelector "beginCustomizingItems:"
  endCustomizing:        @nativeSelector "endCustomizingAnimated:"
  isCustomizing:         @nativeSelector "isCustomizing"

  # Customizing Appearance
  @instanceProperty "backgroundImage"
  @instanceProperty "selectedImageTintColor"
  @instanceProperty "selectionIndicatorImage"
  @instanceProperty "tintColor"

  @register()
