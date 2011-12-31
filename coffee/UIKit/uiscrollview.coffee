# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIScrollView"
exports.UIScrollView = class UIScrollView extends UIView
  @register()

  # Managing the Display of Content
  setContentOffset: objc.invokeSelector "setContentOffset:animated:"
  ck.instanceProperty @, "contentOffset", { set: (v) -> @setContentOffset v, false }
  ck.instanceProperty @, "contentSize"
  ck.instanceProperty @, "contentInset"

  # Managing Scrolling
  ck.instanceProperty @, "scrollEnabled"
  ck.instanceProperty @, "directionalLockEnabled"
  ck.instanceProperty @, "scrollsToTop"
  scrollRectToVisible: objc.invokeSelector "scrollRectToVisible:animated:"
  ck.instanceProperty @, "pagingEnabled"
  ck.instanceProperty @, "bounces"
  ck.instanceProperty @, "alwaysBounceVertical"
  ck.instanceProperty @, "alwaysBounceHorizontal"
  touchesShouldBegin: objc.invokeSelector "touchesShouldBegin:withEvent:inContentView:"
  touchesShouldCancelInContentView: objc.invokeSelector "touchesShouldCancelInContentView:"
  ck.instanceProperty @, "canCancelContentTouches"
  ck.instanceProperty @, "delaysContentTouches"
  ck.instanceProperty @, "decelerationRate"
  ck.instanceProperty @, "dragging"
  ck.instanceProperty @, "tracking"
  ck.instanceProperty @, "decelerating"

  # Managing the Scroll Indicator
  ck.instanceProperty @, "indicatorStyle"
  ck.instanceProperty @, "scrollIndicatorInsets"
  ck.instanceProperty @, "showsHorizontalScrollIndicator"
  ck.instanceProperty @, "showsVerticalScrollIndicator"
  flashScrollIndicators: objc.invokeSelector "flashScrollIndicators"

  # Zooming and Panning
  ck.instanceProperty @, "panGestureRecognizer"
  ck.instanceProperty @, "pinchGestureRecognizer"
  zoomToRect: objc.invokeSelector "zoomToRect:animated:"
  ck.instanceProperty @, "zoomScale", { set: (v) -> @setZoomScale v, false }
  setZoomScale: objc.invokeSelector "setZoomScale:animated:"
  ck.instanceProperty @, "maximumZoomScale"
  ck.instanceProperty @, "minimumZoomScale"
  ck.instanceProperty @, "zoomBouncing"
  ck.instanceProperty @, "zooming"
  ck.instanceProperty @, "bouncesZoom"

  # Managing the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIScrollViewDelegate) }
