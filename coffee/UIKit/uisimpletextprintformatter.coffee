# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISimpleTextPrintFormatter"
exports.UISimpleTextPrintFormatter = class UISimpleTextPrintFormatter extends UIPrintFormatter
  @register()

  # Creating a Simple-Text Print Formatter
  initWithText: objc.invokeSelector "initWithText:"

  # Getting and Setting the Text
  ck.instanceProperty @, "text"

  # Text Attributes for Printed Content
  ck.instanceProperty @, "font"
  ck.instanceProperty @, "color"
  ck.instanceProperty @, "lineBreakMode"
  ck.instanceProperty @, "textAlignment"
