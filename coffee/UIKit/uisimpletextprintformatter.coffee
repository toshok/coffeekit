#console.log "UISimpleTextPrintFormatter"
class UISimpleTextPrintFormatter extends UIPrintFormatter

  # Creating a Simple-Text Print Formatter
  initWithText: objc.invokeSelector ("initWithText:")

  # Getting and Setting the Text
  ck.addProperty @::, "text"

  # Text Attributes for Printed Content
  ck.addProperty @::, "font"
  ck.addProperty @::, "color"
  ck.addProperty @::, "lineBreakMode"
  ck.addProperty @::, "textAlignment"

new ck.RegisterAttribute UISimpleTextPrintFormatter, "UISimpleTextPrintFormatter"
exports.UISimpleTextPrintFormatter = UISimpleTextPrintFormatter
