#console.log "UIPrintFormatter"
class UIPrintFormatter extends foundation.NSObject

  # Laying Out the Content
  ck.addProperty @::, "contentInsets"
  ck.addProperty @::, "maximumContentHeight"
  ck.addProperty @::, "maximumContentWidth"

  # Managing Pagination
  ck.addProperty @::, "startPage"
  ck.addProperty @::, "pageCount"

  # Drawing the Content
  drawInRectForPageAtIndex: objc.invokeSelector ("drawInRect:forPageAtIndex:")
  rectForPageAtIndex: objc.invokeSelector ("rectForPageAtIndex:")

  # Communicating with the Page Renderer
  removeFromPrintPageRenderer: objc.invokeSelector ("removeFromPrintPageRenderer")
  ck.addProperty @::, "printPageRenderer"

new ck.RegisterAttribute UIPrintFormatter, "UIPrintFormatter"
exports.UIPrintFormatter = UIPrintFormatter
