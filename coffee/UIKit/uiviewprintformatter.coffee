#console.log "UIViewPrintFormatter"
class UIViewPrintFormatter extends UIPrintFormatter

  # Accessing the View
  ck.addProperty @::, "view"

new ck.RegisterAttribute UIViewPrintFormatter, "UIViewPrintFormatter"
exports.UIViewPrintFormatter = UIViewPrintFormatter
