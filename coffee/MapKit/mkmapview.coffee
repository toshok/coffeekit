# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKMapView extends ui.UIView
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Accessing Map Properties
  ck.addProperty @::, "mapType"
  ck.addProperty @::, "zoomEnabled"
  ck.addProperty @::, "scrollEnabled"

  # Accessing the Delegate
  ck.addProperty @::, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, MKMapViewDelegate) }

  # Manipulating the Visible Portion of the Map
  ck.addProperty @::, "region", { set: (v) -> @setRegion v, false }
  setRegion: objc.invokeSelector ("setRegion:animated:")
  ck.addProperty @::, "centerCoordinate", { set: (v) -> @setCenterCoordinate v, false }
  setCenterCoordinate: objc.invokeSelector ("setCenterCoordinate:animated:")
  ck.addProperty @::, "visibleMapRect", { set: (v) -> @setVisibleMapRect v, false }
  setVisibleMapRect: objc.invokeSelector ("setVisibleMapRect:animated:")
  setVisibleMapRectWithEdgePadding: objc.invokeSelector ("setVisibleMapRect:edgePadding:animated:")

  # Accessing the Device’s Current Location
  ck.addProperty @::, "showsUserLocation"
  ck.addProperty @::, "userLocationVisible"
  ck.addProperty @::, "userLocation"

  # Annotating the Map
  ck.addProperty @::, "annotations"
  addAnnotation: objc.invokeSelector ("addAnnotation:")
  addAnnotations: objc.invokeSelector ("addAnnotations:")
  removeAnnotation: objc.invokeSelector ("removeAnnotation:")
  removeAnnotations: objc.invokeSelector ("removeAnnotations:")
  viewForAnnotation: objc.invokeSelector ("viewForAnnotation:")
  annotationsInMapRect: objc.invokeSelector ("annotationsInMapRect:")
  ck.addProperty @::, "annotationVisibleRect"
  dequeueReusableAnnotationViewWithIdentifier: objc.invokeSelector ("dequeueReusableAnnotationViewWithIdentifier:")

  # Managing Annotation Selections
  ck.addProperty @::, "selectedAnnotations"
  selectAnnotation: objc.invokeSelector ("selectAnnotation:animated:")
  deselectAnnotation: objc.invokeSelector ("deselectAnnotation:animated:")

  # Adding and Removing Overlays
  ck.addProperty @::, "overlays"
  addOverlay: objc.invokeSelector ("addOverlay:")
  addOverlays: objc.invokeSelector ("addOverlays:")
  removeOverlay: objc.invokeSelector ("removeOverlay:")
  removeOverlays: objc.invokeSelector ("removeOverlays:")
  insertOverlayAtIndex: objc.invokeSelector ("insertOverlay:atIndex:")
  exchangeOverlayAtIndex: objc.invokeSelector ("exchangeOverlayAtIndex:withOverlayAtIndex:")
  insertOverlayAboveOverlay: objc.invokeSelector ("insertOverlay:aboveOverlay:")
  insertOverlayBelowOverlay: objc.invokeSelector ("insertOverlay:belowOverlay:")
  viewForOverlay: objc.invokeSelector ("viewForOverlay:")

  # Converting Map Coordinates
  convertCoordinateToPointToView: objc.invokeSelector ("convertCoordinate:toPointToView:")
  convertPointToCoordinateFromView: objc.invokeSelector ("convertPoint:toCoordinateFromView:")
  convertRegionToRectToView: objc.invokeSelector ("convertRegion:toRectToView:")
  convertRectToRegionFromView: objc.invokeSelector ("convertRect:toRegionFromView:")

  # Adjusting Map Regions and Rectangles
  regionThatFits: objc.invokeSelector ("regionThatFits:")
  mapRectThatFits: objc.invokeSelector ("mapRectThatFits:")
  mapRectThatFitsWithEdgePadding: objc.invokeSelector ("mapRectThatFits:edgePadding:")

  # Tracking the User Location
  setUserTrackingMode: objc.invokeSelector ("setUserTrackingMode:animated:")
  ck.addProperty @::, "userTrackingMode", { set: (v) -> @setUserTrackingMode v, false }

new ck.RegisterAttribute MKMapView, "MKMapView"
exports.MKMapView = MKMapView
