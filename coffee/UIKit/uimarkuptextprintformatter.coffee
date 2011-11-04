#console.log "UIMarkupTextPrintFormatter"
class UIMarkupTextPrintFormatter extends UIPrintFormatter

  # Creating a Markup-Text Print Formatter
  initWithMarkupText: objc.invokeSelector "initWithMarkupText:"

  # Getting and Setting the Markup Text
  ck.addProperty @::, "markupText"

new ck.RegisterAttribute UIMarkupTextPrintFormatter, "UIMarkupTextPrintFormatter"
exports.UIMarkupTextPrintFormatter = UIMarkupTextPrintFormatter
