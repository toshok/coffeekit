# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITabBarItem"
exports.UITabBarItem = class UITabBarItem extends UIBarItem
  @register()

  # Initializing a Item
  initWithTabBarSystemItem: objc.invokeSelector "initWithTabBarSystemItem:tag:"
  initWithTitle: objc.invokeSelector "initWithTitle:image:tag:"

  # Getting and Setting Properties
  ck.instanceProperty @, "badgeValue"

  # Managing the Finished Selected Image
  finishedSelectedImage: objc.invokeSelector "finishedSelectedImage"
  finishedUnselectedImage: objc.invokeSelector "finishedUnselectedImage"
  setFinishedSelectedImage: objc.invokeSelector "setFinishedSelectedImage:withFinishedUnselectedImage:"

  # Customizing Appearance
  titlePositionAdjustment: objc.invokeSelector "titlePositionAdjustment"
  setTitlePositionAdjustment: objc.invokeSelector "setTitlePositionAdjustment:"
