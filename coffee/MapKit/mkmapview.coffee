# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKMapView = class MKMapView extends ui.UIView
  @register()

  # Accessing Map Properties
  ck.instanceProperty @, "mapType"
  ck.instanceProperty @, "zoomEnabled"
  ck.instanceProperty @, "scrollEnabled"

  # Accessing the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, MKMapViewDelegate) }

  # Manipulating the Visible Portion of the Map
  ck.instanceProperty @, "region", { set: (v) -> @setRegion v, false }
  setRegion: objc.invokeSelector "setRegion:animated:"
  ck.instanceProperty @, "centerCoordinate", { set: (v) -> @setCenterCoordinate v, false }
  setCenterCoordinate: objc.invokeSelector "setCenterCoordinate:animated:"
  ck.instanceProperty @, "visibleMapRect", { set: (v) -> @setVisibleMapRect v, false }
  setVisibleMapRect: objc.invokeSelector "setVisibleMapRect:animated:"
  setVisibleMapRectWithEdgePadding: objc.invokeSelector "setVisibleMapRect:edgePadding:animated:"

  # Accessing the Device’s Current Location
  ck.instanceProperty @, "showsUserLocation"
  ck.instanceProperty @, "userLocationVisible"
  ck.instanceProperty @, "userLocation"

  # Annotating the Map
  ck.instanceProperty @, "annotations"
  addAnnotation: objc.invokeSelector "addAnnotation:"
  addAnnotations: objc.invokeSelector "addAnnotations:"
  removeAnnotation: objc.invokeSelector "removeAnnotation:"
  removeAnnotations: objc.invokeSelector "removeAnnotations:"
  viewForAnnotation: objc.invokeSelector "viewForAnnotation:"
  annotationsInMapRect: objc.invokeSelector "annotationsInMapRect:"
  ck.instanceProperty @, "annotationVisibleRect"
  dequeueReusableAnnotationViewWithIdentifier: objc.invokeSelector "dequeueReusableAnnotationViewWithIdentifier:"

  # Managing Annotation Selections
  ck.instanceProperty @, "selectedAnnotations"
  selectAnnotation: objc.invokeSelector "selectAnnotation:animated:"
  deselectAnnotation: objc.invokeSelector "deselectAnnotation:animated:"

  # Adding and Removing Overlays
  ck.instanceProperty @, "overlays"
  addOverlay: objc.invokeSelector "addOverlay:"
  addOverlays: objc.invokeSelector "addOverlays:"
  removeOverlay: objc.invokeSelector "removeOverlay:"
  removeOverlays: objc.invokeSelector "removeOverlays:"
  insertOverlayAtIndex: objc.invokeSelector "insertOverlay:atIndex:"
  exchangeOverlayAtIndex: objc.invokeSelector "exchangeOverlayAtIndex:withOverlayAtIndex:"
  insertOverlayAboveOverlay: objc.invokeSelector "insertOverlay:aboveOverlay:"
  insertOverlayBelowOverlay: objc.invokeSelector "insertOverlay:belowOverlay:"
  viewForOverlay: objc.invokeSelector "viewForOverlay:"

  # Converting Map Coordinates
  convertCoordinateToPointToView: objc.invokeSelector "convertCoordinate:toPointToView:"
  convertPointToCoordinateFromView: objc.invokeSelector "convertPoint:toCoordinateFromView:"
  convertRegionToRectToView: objc.invokeSelector "convertRegion:toRectToView:"
  convertRectToRegionFromView: objc.invokeSelector "convertRect:toRegionFromView:"

  # Adjusting Map Regions and Rectangles
  regionThatFits: objc.invokeSelector "regionThatFits:"
  mapRectThatFits: objc.invokeSelector "mapRectThatFits:"
  mapRectThatFitsWithEdgePadding: objc.invokeSelector "mapRectThatFits:edgePadding:"

  # Tracking the User Location
  setUserTrackingMode: objc.invokeSelector "setUserTrackingMode:animated:"
  ck.instanceProperty @, "userTrackingMode", { set: (v) -> @setUserTrackingMode v, false }
