#console.log "UIPageControl"
class UIPageControl extends UIControl

  # Managing the Page Navigation
  ck.addProperty @::, "currentPage"
  ck.addProperty @::, "numberOfPages"
  ck.addProperty @::, "hidesForSinglePage"

  # Updating the Page Display
  ck.addProperty @::, "defersCurrentPageDisplay"
  updateCurrentPageDisplay: objc.invokeSelector ("updateCurrentPageDisplay")

  # Resizing the Control
  sizeForNumberOfPages: objc.invokeSelector ("sizeForNumberOfPages:")

new ck.RegisterAttribute UIPageControl, "UIPageControl"
exports.UIPageControl = UIPageControl
