# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITabBarItem"
exports.UITabBarItem = class UITabBarItem extends UIBarItem
  # Initializing a Item
  initWithTabBarSystemItem: @nativeSelector "initWithTabBarSystemItem:tag:"
  initWithTitle:            @nativeSelector "initWithTitle:image:tag:"

  # Getting and Setting Properties
  @instanceProperty "badgeValue"

  # Managing the Finished Selected Image
  finishedSelectedImage:    @nativeSelector "finishedSelectedImage"
  finishedUnselectedImage:  @nativeSelector "finishedUnselectedImage"
  setFinishedSelectedImage: @nativeSelector "setFinishedSelectedImage:withFinishedUnselectedImage:"

  # Customizing Appearance
  titlePositionAdjustment:    @nativeSelector "titlePositionAdjustment"
  setTitlePositionAdjustment: @nativeSelector "setTitlePositionAdjustment:"

  @register()
