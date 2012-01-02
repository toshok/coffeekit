# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIScreen"
exports.UIScreen = class UIScreen extends foundation.NSObject
  # Getting the Available Screens
  @staticProperty   "mainScreen", { set: null } # readonly class property
  @staticProperty   "screens", { set: null } # readonly class property
  @instanceProperty "mirroredScreen"

  # Getting the Bounds Information
  @instanceProperty "bounds"
  @instanceProperty "applicationFrame"
  @instanceProperty "scale"

  # Accessing the Screen Modes
  @instanceProperty "preferredMode"
  @instanceProperty "availableModes"
  @instanceProperty "currentMode"

  # Getting a Display Link
  displayLink: @nativeSelector "displayLinkWithTarget:selector:"

  # Setting a Display’s Brightness
  @instanceProperty "brightness"
  @instanceProperty "wantsSoftwareDimming"

  # Setting a Display’s Overscan Compensation.
  @instanceProperty "overscanCompensation"

  @register()
