# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITabBar"
class UITabBar extends UIView

  # Getting and Setting Properties
  ck.addProperty @::, "delegate"

  # Configuring Items
  ck.addProperty @::, "items", { set: (v) -> @setItems v, false }
  setItems: objc.invokeSelector "setItems:animated:"
  ck.addProperty @::, "selectedItem"

  # Customizing Tab Bars
  beginCustomizingItems: objc.invokeSelector "beginCustomizingItems:"
  endCustomizing: objc.invokeSelector "endCustomizingAnimated:"
  isCustomizing: objc.invokeSelector "isCustomizing"

  # Customizing Appearance
  ck.addProperty @::, "backgroundImage"
  ck.addProperty @::, "selectedImageTintColor"
  ck.addProperty @::, "selectionIndicatorImage"
  ck.addProperty @::, "tintColor"

new ck.RegisterAttribute UITabBar, "UITabBar"
exports.UITabBar = UITabBar
