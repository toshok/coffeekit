# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITabBar"
exports.UITabBar = class UITabBar extends UIView
  @register()

  # Getting and Setting Properties
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UITabBarDelegate) }

  # Configuring Items
  ck.instanceProperty @, "items", { set: (v) -> @setItems v, false }
  setItems: objc.invokeSelector "setItems:animated:"
  ck.instanceProperty @, "selectedItem"

  # Customizing Tab Bars
  beginCustomizingItems: objc.invokeSelector "beginCustomizingItems:"
  endCustomizing: objc.invokeSelector "endCustomizingAnimated:"
  isCustomizing: objc.invokeSelector "isCustomizing"

  # Customizing Appearance
  ck.instanceProperty @, "backgroundImage"
  ck.instanceProperty @, "selectedImageTintColor"
  ck.instanceProperty @, "selectionIndicatorImage"
  ck.instanceProperty @, "tintColor"
