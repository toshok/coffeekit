# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UILabel"
exports.UILabel = class UILabel extends UIView
  # Accessing the Text Attributes
  @instanceProperty "text"
  @instanceProperty "font"
  @instanceProperty "textColor"
  @instanceProperty "textAlignment"
  @instanceProperty "lineBreakMode"
  @instanceProperty "enabled"

  # Sizing the Label’s Text
  @instanceProperty "adjustsFontSizeToFitWidth"
  @instanceProperty "baselineAdjustment"
  @instanceProperty "minimumFontSize"
  @instanceProperty "numberOfLines"

  # Managing Highlight Values
  @instanceProperty "highlightedTextColor"
  @instanceProperty "highlighted"

  # Drawing a Shadow
  @instanceProperty "shadowColor"
  @instanceProperty "shadowOffset"

  # Drawing and Positioning Overrides
  textRect:       @nativeSelector "textRectForBounds:limitedToNumberOfLines:"
  drawTextInRect: @nativeSelector "drawTextInRect:"

  # Setting and Getting Attributes
  @instanceProperty "userInteractionEnabled"

  @register()
