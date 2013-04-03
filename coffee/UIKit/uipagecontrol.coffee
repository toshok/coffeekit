# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIPageControl"
exports.UIPageControl = class UIPageControl extends UIControl
  # Managing the Page Navigation
  @instanceProperty "currentPage"
  @instanceProperty "numberOfPages"
  @instanceProperty "hidesForSinglePage"

  # Updating the Page Display
  @instanceProperty         "defersCurrentPageDisplay"
  updateCurrentPageDisplay: @nativeSelector "updateCurrentPageDisplay"

  # Resizing the Control
  sizeForNumberOfPages: @nativeSelector "sizeForNumberOfPages:"

  @register()
