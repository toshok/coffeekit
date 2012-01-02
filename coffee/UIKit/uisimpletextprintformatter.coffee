# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISimpleTextPrintFormatter"
exports.UISimpleTextPrintFormatter = class UISimpleTextPrintFormatter extends UIPrintFormatter
  # Creating a Simple-Text Print Formatter
  initWithText:     @nativeSelector "initWithText:"

  # Getting and Setting the Text
  @instanceProperty "text"

  # Text Attributes for Printed Content
  @instanceProperty "font"
  @instanceProperty "color"
  @instanceProperty "lineBreakMode"
  @instanceProperty "textAlignment"

  @register()
