# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKMapViewDelgate"

exports.MKMapViewDelegate = class MKMapViewDelegate extends foundation.Protocol
  # Responding to Map Position Changes
  regionWillChange:                 @optionalMethod "mapView:regionWillChangeAnimated:"
  regionDidChange:                  @optionalMethod "mapView:regionDidChangeAnimated:"

  # Loading the Map Data
  willStartLoading:                 @optionalMethod "mapViewWillStartLoadingMap:"
  didFinishLoading:                 @optionalMethod "mapViewDidFinishLoadingMap:"
  didFailLoadingMap:                @optionalMethod "mapViewDidFailLoadingMap:withError:"

  # Tracking the User Location
  willStartLocatingUser:            @optionalMethod "mapViewWillStartLocatingUser:"
  didStartLocatingUser:             @optionalMethod "mapViewDidStopLocatingUser:"
  didUpdateUserLocation:            @optionalMethod "mapView:didUpdateUserLocation:"
  didFailToLocateUser:              @optionalMethod "mapView:didFailToLocateUserWithError:"
  didChangeUserTrackingMode:        @requiredMethod "mapView:didChangeUserTrackingMode:animated:"

  # Managing Annotation Views
  viewForAnnotation:                @optionalMethod "mapView:viewForAnnotation:"
  didAddAnnotationViews:            @optionalMethod "mapView:didAddAnnotationViews:"
  calloutAccessoryControlTapped:    @optionalMethod "mapView:annotationView:calloutAccessoryControlTapped:"

  # Dragging an Annotation View
  didChangeDragState:               @optionalMethod "mapView:annotationView:didChangeDragState:fromOldState:"

  # Selecting Annotation Views
  didSelectAnnotationView:          @optionalMethod "mapView:didSelectAnnotationView:"
  didDeselectAnnotationView:        @optionalMethod "mapView:didDeselectAnnotationView:"

  # Managing Overlay Views
  viewForOverlay:                   @optionalMethod "mapView:viewForOverlay:"
  didAddOverlayViews:               @optionalMethod "mapView:didAddOverlayViews:"

  @register()
