# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIFont"
exports.UIFont = class UIFont extends foundation.NSObject
  # Creating Arbitrary Fonts
  @fontWithName: @nativeSelector "fontWithName:size:"
  fontWithSize:  @nativeSelector "fontWithSize:"

  # Creating System Fonts
  @systemFontOfSize:       @nativeSelector "systemFontOfSize:"
  @boldSystemFontOfSize:   @nativeSelector "boldSystemFontOfSize:"
  @italicSystemFontOfSize: @nativeSelector "italicSystemFontOfSize:"

  # Getting the Available Font Names
  familyNames:            @nativeSelector "familyNames"
  fontNamesForFamilyName: @nativeSelector "fontNamesForFamilyName:"

  # Getting Font Name Attributes
  @instanceProperty "familyName"
  @instanceProperty "fontName"

  # Getting Font Metrics
  @instanceProperty "pointSize"
  @instanceProperty "ascender"
  @instanceProperty "descender"
  @instanceProperty "capHeight"
  @instanceProperty "xHeight"
  @instanceProperty "lineHeight"
  @instanceProperty "leading" # Deprecated in iOS 4.0

  # Getting System Font Information
  @labelFontSize:       @nativeSelector "labelFontSize"
  @buttonFontSize:      @nativeSelector "buttonFontSize"
  @smallSystemFontSize: @nativeSelector "smallSystemFontSize"
  @systemFontSize:      @nativeSelector "systemFontSize"

  @register()
