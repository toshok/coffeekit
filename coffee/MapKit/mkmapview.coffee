# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKMapView = class MKMapView extends ui.UIView
  # Accessing Map Properties
  @instanceProperty "mapType"
  @instanceProperty "zoomEnabled"
  @instanceProperty "scrollEnabled"

  # Accessing the Delegate
  @autoboxProperty "delegate", MKMapViewDelegate

  # Manipulating the Visible Portion of the Map
  @instanceProperty "region", { set: (v) -> @setRegion v, false }
  setRegion: @nativeSelector "setRegion:animated:"
  @instanceProperty "centerCoordinate", { set: (v) -> @setCenterCoordinate v, false }
  setCenterCoordinate: @nativeSelector "setCenterCoordinate:animated:"
  @instanceProperty "visibleMapRect", { set: (v) -> @setVisibleMapRect v, false }
  setVisibleMapRect: @nativeSelector "setVisibleMapRect:animated:"
  setVisibleMapRectWithEdgePadding: @nativeSelector "setVisibleMapRect:edgePadding:animated:"

  # Accessing the Device’s Current Location
  @instanceProperty "showsUserLocation"
  @instanceProperty "userLocationVisible"
  @instanceProperty "userLocation"

  # Annotating the Map
  @instanceProperty "annotations"
  addAnnotation: @nativeSelector "addAnnotation:"
  addAnnotations: @nativeSelector "addAnnotations:"
  removeAnnotation: @nativeSelector "removeAnnotation:"
  removeAnnotations: @nativeSelector "removeAnnotations:"
  viewForAnnotation: @nativeSelector "viewForAnnotation:"
  annotationsInMapRect: @nativeSelector "annotationsInMapRect:"
  @instanceProperty "annotationVisibleRect"
  dequeueReusableAnnotationViewWithIdentifier: @nativeSelector "dequeueReusableAnnotationViewWithIdentifier:"

  # Managing Annotation Selections
  @instanceProperty "selectedAnnotations"
  selectAnnotation: @nativeSelector "selectAnnotation:animated:"
  deselectAnnotation: @nativeSelector "deselectAnnotation:animated:"

  # Adding and Removing Overlays
  @instanceProperty "overlays"
  addOverlay: @nativeSelector "addOverlay:"
  addOverlays: @nativeSelector "addOverlays:"
  removeOverlay: @nativeSelector "removeOverlay:"
  removeOverlays: @nativeSelector "removeOverlays:"
  insertOverlayAtIndex: @nativeSelector "insertOverlay:atIndex:"
  exchangeOverlayAtIndex: @nativeSelector "exchangeOverlayAtIndex:withOverlayAtIndex:"
  insertOverlayAboveOverlay: @nativeSelector "insertOverlay:aboveOverlay:"
  insertOverlayBelowOverlay: @nativeSelector "insertOverlay:belowOverlay:"
  viewForOverlay: @nativeSelector "viewForOverlay:"

  # Converting Map Coordinates
  convertCoordinateToPointToView: @nativeSelector "convertCoordinate:toPointToView:"
  convertPointToCoordinateFromView: @nativeSelector "convertPoint:toCoordinateFromView:"
  convertRegionToRectToView: @nativeSelector "convertRegion:toRectToView:"
  convertRectToRegionFromView: @nativeSelector "convertRect:toRegionFromView:"

  # Adjusting Map Regions and Rectangles
  regionThatFits: @nativeSelector "regionThatFits:"
  mapRectThatFits: @nativeSelector "mapRectThatFits:"
  mapRectThatFitsWithEdgePadding: @nativeSelector "mapRectThatFits:edgePadding:"

  # Tracking the User Location
  setUserTrackingMode: @nativeSelector "setUserTrackingMode:animated:"
  @instanceProperty "userTrackingMode", { set: (v) -> @setUserTrackingMode v, false }

  @register()
