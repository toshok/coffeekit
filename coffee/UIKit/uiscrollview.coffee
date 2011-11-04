# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIScrollView"
class UIScrollView extends UIView

  # Managing the Display of Content
  setContentOffset: objc.invokeSelector "setContentOffset:animated:"
  ck.addProperty @::, "contentOffset", { set: (v) -> setContentOffset v, false }
  ck.addProperty @::, "contentSize"
  ck.addProperty @::, "contentInset"

  # Managing Scrolling
  ck.addProperty @::, "scrollEnabled"
  ck.addProperty @::, "directionalLockEnabled"
  ck.addProperty @::, "scrollsToTop"
  scrollRectToVisible: objc.invokeSelector "scrollRectToVisible:animated:"
  ck.addProperty @::, "pagingEnabled"
  ck.addProperty @::, "bounces"
  ck.addProperty @::, "alwaysBounceVertical"
  ck.addProperty @::, "alwaysBounceHorizontal"
  touchesShouldBegin: objc.invokeSelector "touchesShouldBegin:withEvent:inContentView:"
  touchesShouldCancelInContentView: objc.invokeSelector "touchesShouldCancelInContentView:"
  ck.addProperty @::, "canCancelContentTouches"
  ck.addProperty @::, "delaysContentTouches"
  ck.addProperty @::, "decelerationRate"
  ck.addProperty @::, "dragging"
  ck.addProperty @::, "tracking"
  ck.addProperty @::, "decelerating"

  # Managing the Scroll Indicator
  ck.addProperty @::, "indicatorStyle"
  ck.addProperty @::, "scrollIndicatorInsets"
  ck.addProperty @::, "showsHorizontalScrollIndicator"
  ck.addProperty @::, "showsVerticalScrollIndicator"
  flashScrollIndicators: objc.invokeSelector "flashScrollIndicators"

  # Zooming and Panning
  ck.addProperty @::, "panGestureRecognizer"
  ck.addProperty @::, "pinchGestureRecognizer"
  zoomToRect: objc.invokeSelector "zoomToRect:animated:"
  ck.addProperty @::, "zoomScale", { set: (v) -> setZoomScale v, false }
  setZoomScale: objc.invokeSelector "setZoomScale:animated:"
  ck.addProperty @::, "maximumZoomScale"
  ck.addProperty @::, "minimumZoomScale"
  ck.addProperty @::, "zoomBouncing"
  ck.addProperty @::, "zooming"
  ck.addProperty @::, "bouncesZoom"

  # Managing the Delegate
  ck.addProperty @::, "delegate"

new ck.RegisterAttribute UIScrollView, "UIScrollView"
exports.UIScrollView = UIScrollView
