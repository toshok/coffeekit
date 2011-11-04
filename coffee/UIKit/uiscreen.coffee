#console.log "UIScreen"
class UIScreen extends foundation.NSObject

  # Getting the Available Screens
  ck.addProperty @, "mainScreen", { set: null } # readonly class property
  ck.addProperty @, "screens", { set: null } # readonly class property
  ck.addProperty @::, "mirroredScreen"

  # Getting the Bounds Information
  ck.addProperty @::, "bounds"
  ck.addProperty @::, "applicationFrame"
  ck.addProperty @::, "scale"

  # Accessing the Screen Modes
  ck.addProperty @::, "preferredMode"
  ck.addProperty @::, "availableModes"
  ck.addProperty @::, "currentMode"

  # Getting a Display Link
  displayLink: objc.invokeSelector "displayLinkWithTarget:selector:"

  # Setting a Display’s Brightness
  ck.addProperty @::, "brightness"
  ck.addProperty @::, "wantsSoftwareDimming"

  # Setting a Display’s Overscan Compensation.
  ck.addProperty @::, "overscanCompensation"

new ck.RegisterAttribute UIScreen, "UIScreen"
exports.UIScreen = UIScreen
