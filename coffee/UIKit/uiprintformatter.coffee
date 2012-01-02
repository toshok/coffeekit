# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPrintFormatter"
exports.UIPrintFormatter = class UIPrintFormatter extends foundation.NSObject
  # Laying Out the Content
  @instanceProperty "contentInsets"
  @instanceProperty "maximumContentHeight"
  @instanceProperty "maximumContentWidth"

  # Managing Pagination
  @instanceProperty "startPage"
  @instanceProperty "pageCount"

  # Drawing the Content
  drawInRectForPageAtIndex:    @nativeSelector "drawInRect:forPageAtIndex:"
  rectForPageAtIndex:          @nativeSelector "rectForPageAtIndex:"

  # Communicating with the Page Renderer
  removeFromPrintPageRenderer: @nativeSelector "removeFromPrintPageRenderer"
  @instanceProperty "printPageRenderer"

  @register()
