# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIScrollView"
exports.UIScrollView = class UIScrollView extends UIView
  # Managing the Display of Content
  setContentOffset: @nativeSelector "setContentOffset:animated:"
  @instanceProperty "contentOffset", { set: (v) -> @setContentOffset v, false }
  @instanceProperty "contentSize"
  @instanceProperty "contentInset"

  # Managing Scrolling
  scrollRectToVisible:              @nativeSelector "scrollRectToVisible:animated:"
  touchesShouldBegin:               @nativeSelector "touchesShouldBegin:withEvent:inContentView:"
  touchesShouldCancelInContentView: @nativeSelector "touchesShouldCancelInContentView:"
  @instanceProperty "scrollEnabled"
  @instanceProperty "directionalLockEnabled"
  @instanceProperty "scrollsToTop"
  @instanceProperty "pagingEnabled"
  @instanceProperty "bounces"
  @instanceProperty "alwaysBounceVertical"
  @instanceProperty "alwaysBounceHorizontal"
  @instanceProperty "canCancelContentTouches"
  @instanceProperty "delaysContentTouches"
  @instanceProperty "decelerationRate"
  @instanceProperty "dragging"
  @instanceProperty "tracking"
  @instanceProperty "decelerating"

  # Managing the Scroll Indicator
  @instanceProperty "indicatorStyle"
  @instanceProperty "scrollIndicatorInsets"
  @instanceProperty "showsHorizontalScrollIndicator"
  @instanceProperty "showsVerticalScrollIndicator"
  flashScrollIndicators: @nativeSelector "flashScrollIndicators"

  # Zooming and Panning
  zoomToRect:   @nativeSelector "zoomToRect:animated:"
  setZoomScale: @nativeSelector "setZoomScale:animated:"
  @instanceProperty "panGestureRecognizer"
  @instanceProperty "pinchGestureRecognizer"
  @instanceProperty "zoomScale", { set: (v) -> @setZoomScale v, false }
  @instanceProperty "maximumZoomScale"
  @instanceProperty "minimumZoomScale"
  @instanceProperty "zoomBouncing"
  @instanceProperty "zooming"
  @instanceProperty "bouncesZoom"

  # Managing the Delegate
  @autoboxProperty  "delegate", UIScrollViewDelegate

  @register()
