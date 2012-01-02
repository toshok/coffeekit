# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKOverlayView = class MKOverlayView extends ui.UIView
  # Initializing an Overlay View
  initWithOverlay: @nativeSelector "initWithOverlay:"

  # Attributes of the Overlay
  @instanceProperty "overlay"

  # Converting Points on the Map
  pointForMapPoint: @nativeSelector "pointForMapPoint:"
  mapPointForPoint: @nativeSelector "mapPointForPoint:"
  rectForMapRect: @nativeSelector "rectForMapRect:"
  mapRectForRect: @nativeSelector "mapRectForRect:"

  # Drawing the Overlay
  canDrawMapRect: @nativeSelector "canDrawMapRect:zoomScale:"
  drawMapRect: @nativeSelector "drawMapRect:zoomScale:inContext:"
  setNeedsDisplay: @nativeSelector "setNeedsDisplayInMapRect:"
  setNeedsDisplayAtZoomScale: @nativeSelector "setNeedsDisplayInMapRect:zoomScale:"

  @register()
