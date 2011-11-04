#console.log "UILabel"
class UILabel extends UIView

  # Accessing the Text Attributes
  ck.addProperty @::, "text"
  ck.addProperty @::, "font"
  ck.addProperty @::, "textColor"
  ck.addProperty @::, "textAlignment"
  ck.addProperty @::, "lineBreakMode"
  ck.addProperty @::, "enabled"

  # Sizing the Label’s Text
  ck.addProperty @::, "adjustsFontSizeToFitWidth"
  ck.addProperty @::, "baselineAdjustment"
  ck.addProperty @::, "minimumFontSize"
  ck.addProperty @::, "numberOfLines"

  # Managing Highlight Values
  ck.addProperty @::, "highlightedTextColor"
  ck.addProperty @::, "highlighted"

  # Drawing a Shadow
  ck.addProperty @::, "shadowColor"
  ck.addProperty @::, "shadowOffset"

  # Drawing and Positioning Overrides
  textRect: objc.invokeSelector ("textRectForBounds:limitedToNumberOfLines:")
  drawTextInRect: objc.invokeSelector ("drawTextInRect:")

  # Setting and Getting Attributes
  ck.addProperty @::, "userInteractionEnabled"

new ck.RegisterAttribute UILabel, "UILabel"
exports.UILabel = UILabel
