# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIMarkupTextPrintFormatter"
exports.UIMarkupTextPrintFormatter = class UIMarkupTextPrintFormatter extends UIPrintFormatter
  @register()

  # Creating a Markup-Text Print Formatter
  initWithMarkupText: objc.invokeSelector "initWithMarkupText:"

  # Getting and Setting the Markup Text
  ck.instanceProperty @, "markupText"
