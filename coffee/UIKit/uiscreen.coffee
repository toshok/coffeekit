# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIScreen"
exports.UIScreen = class UIScreen extends foundation.NSObject
  @register()

  # Getting the Available Screens
  ck.staticProperty @, "mainScreen", { set: null } # readonly class property
  ck.staticProperty @, "screens", { set: null } # readonly class property
  ck.instanceProperty @, "mirroredScreen"

  # Getting the Bounds Information
  ck.instanceProperty @, "bounds"
  ck.instanceProperty @, "applicationFrame"
  ck.instanceProperty @, "scale"

  # Accessing the Screen Modes
  ck.instanceProperty @, "preferredMode"
  ck.instanceProperty @, "availableModes"
  ck.instanceProperty @, "currentMode"

  # Getting a Display Link
  displayLink: objc.invokeSelector "displayLinkWithTarget:selector:"

  # Setting a Display’s Brightness
  ck.instanceProperty @, "brightness"
  ck.instanceProperty @, "wantsSoftwareDimming"

  # Setting a Display’s Overscan Compensation.
  ck.instanceProperty @, "overscanCompensation"
