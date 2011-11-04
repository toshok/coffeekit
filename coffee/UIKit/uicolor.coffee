#console.log "UIColor"
class UIColor extends foundation.NSObject

  toString: -> "UIColor"

  # Creating a UIColor Object from Component Values
  @colorWithWhite: objc.invokeSelector "colorWithWhite:alpha:"
  @colorWithHSBA: objc.invokeSelector "colorWithHue:saturation:brightness:alpha:"
  @colorWithRGBA: objc.invokeSelector "colorWithRed:green:blue:alpha:"
  @colorWithCGColor: objc.invokeSelector "colorWithCGColor:"
  @colorWithPatternImage: objc.invokeSelector "colorWithPatternImage:"
  @colorWithCIColor: objc.invokeSelector "colorWithCIColor:"
  @colorWithAlphaComponent: objc.invokeSelector "colorWithAlphaComponent:"

  # Initializing a UIColor Object
  initWithWhite: objc.invokeSelector "initWithWhite:alpha:"
  initWithHSBA: objc.invokeSelector "initWithHue:saturation:brightness:alpha:"
  initWithRGBA: objc.invokeSelector "initWithRed:green:blue:alpha:"
  initWithCGColor: objc.invokeSelector "initWithCGColor:"
  initWithPatternImage: objc.invokeSelector "initWithPatternImage:"
  initWithCIColor: objc.invokeSelector "initWithCIColor:"

  # Creating a UIColor with Preset Component Values
  ck.addProperty @, "blackColor", set : null # readonly
  ck.addProperty @, "darkGrayColor", set : null # readonly
  ck.addProperty @, "lightGrayColor", set : null # readonly
  ck.addProperty @, "whiteColor", set : null # readonly
  ck.addProperty @, "grayColor", set : null # readonly
  ck.addProperty @, "redColor", set : null # readonly
  ck.addProperty @, "greenColor", set : null # readonly
  ck.addProperty @, "blueColor", set : null # readonly
  ck.addProperty @, "cyanColor", set : null # readonly
  ck.addProperty @, "yellowColor", set : null # readonly
  ck.addProperty @, "magentaColor", set : null # readonly
  ck.addProperty @, "orangeColor", set : null # readonly
  ck.addProperty @, "purpleColor", set : null # readonly
  ck.addProperty @, "brownColor", set : null # readonly
  ck.addProperty @, "clearColor", set : null # readonly

  # System Colors
  ck.addProperty @, "lightTextColor", set : null # readonly
  ck.addProperty @, "darkTextColor", set : null # readonly
  ck.addProperty @, "groupTableViewBackgroundColor", set : null # readonly
  ck.addProperty @, "viewFlipsideBackgroundColor", set : null # readonly
  ck.addProperty @, "scrollViewTexturedBackgroundColor", set : null # readonly
  ck.addProperty @, "underPageBackgroundColor", set : null # readonly

  # Retrieving Color Information
  ck.addProperty @::, "CGColor"
  ck.addProperty @::, "CIColor"
  getHSBA: objc.invokeSelector "getHue:saturation:brightness:alpha:"
  getRGBA: objc.invokeSelector "getRed:green:blue:alpha:"
  getWhite: objc.invokeSelector "getWhite:alpha:"

  # Drawing Operations
  set: objc.invokeSelector "set"
  setFill: objc.invokeSelector "setFill"
  setStroke: objc.invokeSelector "setStroke"

new ck.RegisterAttribute UIColor, "UIColor"
exports.UIColor = UIColor
