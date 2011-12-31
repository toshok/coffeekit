# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPageControl"
exports.UIPageControl = class UIPageControl extends UIControl
  @register()

  # Managing the Page Navigation
  ck.instanceProperty @, "currentPage"
  ck.instanceProperty @, "numberOfPages"
  ck.instanceProperty @, "hidesForSinglePage"

  # Updating the Page Display
  ck.instanceProperty @, "defersCurrentPageDisplay"
  updateCurrentPageDisplay: objc.invokeSelector "updateCurrentPageDisplay"

  # Resizing the Control
  sizeForNumberOfPages: objc.invokeSelector "sizeForNumberOfPages:"
