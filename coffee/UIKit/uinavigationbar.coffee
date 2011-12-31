# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UINavigationBar"
exports.UINavigationBar = class UINavigationBar extends UIView
  @register()

  # Configuring Navigation Bars
  ck.instanceProperty @, "barStyle"
  ck.instanceProperty @, "translucent"

  # Assigning the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UINavigationBarDelegate) }

  # Pushing and Popping Items
  pushNavigationItem: objc.invokeSelector "pushNavigationItem:animated:"
  popNavigationItem: objc.invokeSelector "popNavigationItemAnimated:"
  setItems: objc.invokeSelector "setItems:animated:"
  ck.instanceProperty @, "items", { set: (v) -> @setItems v, false }
  ck.instanceProperty @, "topItem"
  ck.instanceProperty @, "backItem"

  # Customizing the Bar Appearance
  ck.instanceProperty @, "tintColor"
  backgroundImage: objc.invokeSelector "backgroundImageForBarMetrics:"
  setBackgroundImage: objc.invokeSelector "setBackgroundImage:forBarMetrics:"
  titleVerticalPositionAdjustment: objc.invokeSelector "titleVerticalPositionAdjustmentForBarMetrics:"
  setTitleVerticalPositionAdjustment: objc.invokeSelector "setTitleVerticalPositionAdjustment:forBarMetrics:"
  ck.instanceProperty @, "titleTextAttributes"
