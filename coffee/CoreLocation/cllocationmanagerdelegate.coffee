# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKMapViewDelgate"

exports.CLLocationManagerDelegate = class CLLocationManagerDelegate extends foundation.Protocol
  # Responding to Location Events
  didUpdateToLocation:   @optionalMethod ("locationManager:didUpdateToLocation:fromLocation:")
  didFailWithError:      @optionalMethod ("locationManager:didFailWithError:")

  # Responding to Heading Events
  didUpdateHeading:                @optionalMethod ("locationManager:didUpdateHeading:")
  shouldDisplayHeadingCalibration: @optionalMethod ("locationManagerShouldDisplayHeadingCalibration:")

  # Responding to Region Events
  didEnterRegion:     @optionalMethod ("locationManager:didEnterRegion:")
  didExitRegion:      @optionalMethod ("locationManager:didExitRegion:")
  monitoringDidFail:  @optionalMethod ("locationManager:monitoringDidFailForRegion:withError:")
  didStartMonitoring: @optionalMethod ("locationManager:didStartMonitoringForRegion:")

  # Responding to Authorization Changes
  didChangeAuthorizationStatus: @optionalMethod ("locationManager:didChangeAuthorizationStatus:")

  @register()
