# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIColor"
exports.UIColor = class UIColor extends foundation.NSObject
  # Creating a UIColor Object from Component Values
  @colorWithWhite:          @nativeSelector "colorWithWhite:alpha:"
  @colorWithHSBA:           @nativeSelector "colorWithHue:saturation:brightness:alpha:"
  @colorWithRGBA:           @nativeSelector "colorWithRed:green:blue:alpha:"
  @colorWithCGColor:        @nativeSelector "colorWithCGColor:"
  @colorWithPatternImage:   @nativeSelector "colorWithPatternImage:"
  @colorWithCIColor:        @nativeSelector "colorWithCIColor:"
  @colorWithAlphaComponent: @nativeSelector "colorWithAlphaComponent:"

  # Initializing a UIColor Object
  initWithWhite:            @nativeSelector "initWithWhite:alpha:"
  initWithHSBA:             @nativeSelector "initWithHue:saturation:brightness:alpha:"
  initWithRGBA:             @nativeSelector "initWithRed:green:blue:alpha:"
  initWithCGColor:          @nativeSelector "initWithCGColor:"
  initWithPatternImage:     @nativeSelector "initWithPatternImage:"
  initWithCIColor:          @nativeSelector "initWithCIColor:"

  # Creating a UIColor with Preset Component Values
  @staticProperty           "blackColor", set : null # readonly
  @staticProperty           "darkGrayColor", set : null # readonly
  @staticProperty           "lightGrayColor", set : null # readonly
  @staticProperty           "whiteColor", set : null # readonly
  @staticProperty           "grayColor", set : null # readonly
  @staticProperty           "redColor", set : null # readonly
  @staticProperty           "greenColor", set : null # readonly
  @staticProperty           "blueColor", set : null # readonly
  @staticProperty           "cyanColor", set : null # readonly
  @staticProperty           "yellowColor", set : null # readonly
  @staticProperty           "magentaColor", set : null # readonly
  @staticProperty           "orangeColor", set : null # readonly
  @staticProperty           "purpleColor", set : null # readonly
  @staticProperty           "brownColor", set : null # readonly
  @staticProperty           "clearColor", set : null # readonly

  # System Colors
  @staticProperty           "lightTextColor", set : null # readonly
  @staticProperty           "darkTextColor", set : null # readonly
  @staticProperty           "groupTableViewBackgroundColor", set : null # readonly
  @staticProperty           "viewFlipsideBackgroundColor", set : null # readonly
  @staticProperty           "scrollViewTexturedBackgroundColor", set : null # readonly
  @staticProperty           "underPageBackgroundColor", set : null # readonly

  # Retrieving Color Information
  @instanceProperty         "CGColor"
  @instanceProperty         "CIColor"
  getHSBA:                  @nativeSelector "getHue:saturation:brightness:alpha:"
  getRGBA:                  @nativeSelector "getRed:green:blue:alpha:"
  getWhite:                 @nativeSelector "getWhite:alpha:"

  # Drawing Operations
  set:                      @nativeSelector "set"
  setFill:                  @nativeSelector "setFill"
  setStroke:                @nativeSelector "setStroke"

  @register()
