# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UINavigationBar"
class UINavigationBar extends UIView

  # Configuring Navigation Bars
  ck.addProperty @::, "barStyle"
  ck.addProperty @::, "translucent"

  # Assigning the Delegate
  ck.addProperty @::, "delegate"

  # Pushing and Popping Items
  pushNavigationItem: objc.invokeSelector "pushNavigationItem:animated:"
  popNavigationItem: objc.invokeSelector "popNavigationItemAnimated:"
  setItems: objc.invokeSelector "setItems:animated:"
  ck.addProperty @::, "items", { set: (v) -> @setItems v, false }
  ck.addProperty @::, "topItem"
  ck.addProperty @::, "backItem"

  # Customizing the Bar Appearance
  ck.addProperty @::, "tintColor"
  backgroundImage: objc.invokeSelector "backgroundImageForBarMetrics:"
  setBackgroundImage: objc.invokeSelector "setBackgroundImage:forBarMetrics:"
  titleVerticalPositionAdjustment: objc.invokeSelector "titleVerticalPositionAdjustmentForBarMetrics:"
  setTitleVerticalPositionAdjustment: objc.invokeSelector "setTitleVerticalPositionAdjustment:forBarMetrics:"
  ck.addProperty @::, "titleTextAttributes"

new ck.RegisterAttribute UINavigationBar, "UINavigationBar"
exports.UINavigationBar = UINavigationBar
