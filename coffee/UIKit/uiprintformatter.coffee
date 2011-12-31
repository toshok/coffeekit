# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPrintFormatter"
exports.UIPrintFormatter = class UIPrintFormatter extends foundation.NSObject
  @register()

  # Laying Out the Content
  ck.instanceProperty @, "contentInsets"
  ck.instanceProperty @, "maximumContentHeight"
  ck.instanceProperty @, "maximumContentWidth"

  # Managing Pagination
  ck.instanceProperty @, "startPage"
  ck.instanceProperty @, "pageCount"

  # Drawing the Content
  drawInRectForPageAtIndex: objc.invokeSelector "drawInRect:forPageAtIndex:"
  rectForPageAtIndex: objc.invokeSelector "rectForPageAtIndex:"

  # Communicating with the Page Renderer
  removeFromPrintPageRenderer: objc.invokeSelector "removeFromPrintPageRenderer"
  ck.instanceProperty @, "printPageRenderer"
