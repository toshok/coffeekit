# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKOverlayView extends ui.UIView
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Initializing an Overlay View
  initWithOverlay: objc.invokeSelector ("initWithOverlay:")

  # Attributes of the Overlay
  ck.addProperty @::, "overlay"

  # Converting Points on the Map
  pointForMapPoint: objc.invokeSelector ("pointForMapPoint:")
  mapPointForPoint: objc.invokeSelector ("mapPointForPoint:")
  rectForMapRect: objc.invokeSelector ("rectForMapRect:")
  mapRectForRect: objc.invokeSelector ("mapRectForRect:")

  # Drawing the Overlay
  canDrawMapRect: objc.invokeSelector ("canDrawMapRect:zoomScale:")
  drawMapRect: objc.invokeSelector ("drawMapRect:zoomScale:inContext:")
  setNeedsDisplay: objc.invokeSelector ("setNeedsDisplayInMapRect:")
  setNeedsDisplayAtZoomScale: objc.invokeSelector ("setNeedsDisplayInMapRect:zoomScale:")

new ck.RegisterAttribute MKOverlayView, "MKOverlayView"
exports.MKOverlayView = MKOverlayView
