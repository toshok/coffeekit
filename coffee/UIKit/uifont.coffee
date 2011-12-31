# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIFont"
exports.UIFont = class UIFont extends foundation.NSObject
  @register()

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
  ck.instanceProperty @, "familyName"
  ck.instanceProperty @, "fontName"

  # Getting Font Metrics
  ck.instanceProperty @, "pointSize"
  ck.instanceProperty @, "ascender"
  ck.instanceProperty @, "descender"
  ck.instanceProperty @, "capHeight"
  ck.instanceProperty @, "xHeight"
  ck.instanceProperty @, "lineHeight"
  ck.instanceProperty @, "leading" # Deprecated in iOS 4.0

  # Getting System Font Information
  @labelFontSize: objc.invokeSelector "labelFontSize"
  @buttonFontSize: objc.invokeSelector "buttonFontSize"
  @smallSystemFontSize: objc.invokeSelector "smallSystemFontSize"
  @systemFontSize: objc.invokeSelector "systemFontSize"
