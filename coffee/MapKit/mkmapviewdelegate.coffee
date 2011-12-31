# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKMapViewDelgate"
Protocol = foundation.Protocol

exports.MKMapViewDelegate = class MKMapViewDelegate extends foundation.Protocol
  @register()

  # Responding to Map Position Changes
  regionWillChange:                 Protocol.optionalMethod "mapView:regionWillChangeAnimated:"
  regionDidChange:                  Protocol.optionalMethod "mapView:regionDidChangeAnimated:"

  # Loading the Map Data
  willStartLoading:                 Protocol.optionalMethod "mapViewWillStartLoadingMap:"
  didFinishLoading:                 Protocol.optionalMethod "mapViewDidFinishLoadingMap:"
  didFailLoadingMap:                Protocol.optionalMethod "mapViewDidFailLoadingMap:withError:"

  # Tracking the User Location
  willStartLocatingUser:            Protocol.optionalMethod "mapViewWillStartLocatingUser:"
  didStartLocatingUser:             Protocol.optionalMethod "mapViewDidStopLocatingUser:"
  didUpdateUserLocation:            Protocol.optionalMethod "mapView:didUpdateUserLocation:"
  didFailToLocateUser:              Protocol.optionalMethod "mapView:didFailToLocateUserWithError:"
  didChangeUserTrackingMode:        Protocol.requiredMethod "mapView:didChangeUserTrackingMode:animated:"

  # Managing Annotation Views
  viewForAnnotation:                       Protocol.optionalMethod "mapView:viewForAnnotation:"
  didAddAnnotationViews:                   Protocol.optionalMethod "mapView:didAddAnnotationViews:"
  calloutAccessoryControlTapped:           Protocol.optionalMethod "mapView:annotationView:calloutAccessoryControlTapped:"

  # Dragging an Annotation View
  didChangeDragState:               Protocol.optionalMethod "mapView:annotationView:didChangeDragState:fromOldState:"

  # Selecting Annotation Views
  didSelectAnnotationView:          Protocol.optionalMethod "mapView:didSelectAnnotationView:"
  didDeselectAnnotationView:        Protocol.optionalMethod "mapView:didDeselectAnnotationView:"

  # Managing Overlay Views
  viewForOverlay:                   Protocol.optionalMethod "mapView:viewForOverlay:"
  didAddOverlayViews:               Protocol.optionalMethod "mapView:didAddOverlayViews:"
