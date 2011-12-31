# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIColor"
exports.UIColor = class UIColor extends foundation.NSObject
  @register()

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
  ck.staticProperty @, "blackColor", set : null # readonly
  ck.staticProperty @, "darkGrayColor", set : null # readonly
  ck.staticProperty @, "lightGrayColor", set : null # readonly
  ck.staticProperty @, "whiteColor", set : null # readonly
  ck.staticProperty @, "grayColor", set : null # readonly
  ck.staticProperty @, "redColor", set : null # readonly
  ck.staticProperty @, "greenColor", set : null # readonly
  ck.staticProperty @, "blueColor", set : null # readonly
  ck.staticProperty @, "cyanColor", set : null # readonly
  ck.staticProperty @, "yellowColor", set : null # readonly
  ck.staticProperty @, "magentaColor", set : null # readonly
  ck.staticProperty @, "orangeColor", set : null # readonly
  ck.staticProperty @, "purpleColor", set : null # readonly
  ck.staticProperty @, "brownColor", set : null # readonly
  ck.staticProperty @, "clearColor", set : null # readonly

  # System Colors
  ck.staticProperty @, "lightTextColor", set : null # readonly
  ck.staticProperty @, "darkTextColor", set : null # readonly
  ck.staticProperty @, "groupTableViewBackgroundColor", set : null # readonly
  ck.staticProperty @, "viewFlipsideBackgroundColor", set : null # readonly
  ck.staticProperty @, "scrollViewTexturedBackgroundColor", set : null # readonly
  ck.staticProperty @, "underPageBackgroundColor", set : null # readonly

  # Retrieving Color Information
  ck.instanceProperty @, "CGColor"
  ck.instanceProperty @, "CIColor"
  getHSBA: objc.invokeSelector "getHue:saturation:brightness:alpha:"
  getRGBA: objc.invokeSelector "getRed:green:blue:alpha:"
  getWhite: objc.invokeSelector "getWhite:alpha:"

  # Drawing Operations
  set: objc.invokeSelector "set"
  setFill: objc.invokeSelector "setFill"
  setStroke: objc.invokeSelector "setStroke"
