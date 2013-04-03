# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIMarkupTextPrintFormatter"
exports.UIMarkupTextPrintFormatter = class UIMarkupTextPrintFormatter extends UIPrintFormatter
  # Creating a Markup-Text Print Formatter
  initWithMarkupText: @nativeSelector "initWithMarkupText:"

  # Getting and Setting the Markup Text
  @instanceProperty "markupText"

  @register()
