# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIFont"
class UIFont extends foundation.NSObject

  # Creating Arbitrary Fonts
  @fontWithName: objc.invokeSelector "fontWithName:size:"
  fontWithSize: objc.invokeSelector "fontWithSize:"

  # Creating System Fonts
  @systemFontOfSize: objc.invokeSelector "systemFontOfSize:"
  @boldSystemFontOfSize: objc.invokeSelector "boldSystemFontOfSize:"
  @italicSystemFontOfSize: objc.invokeSelector "italicSystemFontOfSize:"

  # Getting the Available Font Names
  familyNames: objc.invokeSelector "familyNames"
  fontNamesForFamilyName: objc.invokeSelector "fontNamesForFamilyName:"

  # Getting Font Name Attributes
  ck.addProperty @::, "familyName"
  ck.addProperty @::, "fontName"

  # Getting Font Metrics
  ck.addProperty @::, "pointSize"
  ck.addProperty @::, "ascender"
  ck.addProperty @::, "descender"
  ck.addProperty @::, "capHeight"
  ck.addProperty @::, "xHeight"
  ck.addProperty @::, "lineHeight"
  ck.addProperty @::, "leading" # Deprecated in iOS 4.0

  # Getting System Font Information
  @labelFontSize: objc.invokeSelector "labelFontSize"
  @buttonFontSize: objc.invokeSelector "buttonFontSize"
  @smallSystemFontSize: objc.invokeSelector "smallSystemFontSize"
  @systemFontSize: objc.invokeSelector "systemFontSize"

new ck.RegisterAttribute UIFont, "UIFont"
exports.UIFont = UIFont
