# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UILabel"
exports.UILabel = class UILabel extends UIView
  @register()

  # Accessing the Text Attributes
  ck.instanceProperty @, "text"
  ck.instanceProperty @, "font"
  ck.instanceProperty @, "textColor"
  ck.instanceProperty @, "textAlignment"
  ck.instanceProperty @, "lineBreakMode"
  ck.instanceProperty @, "enabled"

  # Sizing the Label’s Text
  ck.instanceProperty @, "adjustsFontSizeToFitWidth"
  ck.instanceProperty @, "baselineAdjustment"
  ck.instanceProperty @, "minimumFontSize"
  ck.instanceProperty @, "numberOfLines"

  # Managing Highlight Values
  ck.instanceProperty @, "highlightedTextColor"
  ck.instanceProperty @, "highlighted"

  # Drawing a Shadow
  ck.instanceProperty @, "shadowColor"
  ck.instanceProperty @, "shadowOffset"

  # Drawing and Positioning Overrides
  textRect: objc.invokeSelector "textRectForBounds:limitedToNumberOfLines:"
  drawTextInRect: objc.invokeSelector "drawTextInRect:"

  # Setting and Getting Attributes
  ck.instanceProperty @, "userInteractionEnabled"
