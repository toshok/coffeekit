# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKMapViewDelgate"
Protocol = foundation.Protocol

class CLLocationManagerDelegate extends foundation.Protocol

  # Responding to Location Events
  didUpdateToLocation:   Protocol.optionalMethod ("locationManager:didUpdateToLocation:fromLocation:")
  didFailWithError:      Protocol.optionalMethod ("locationManager:didFailWithError:")

  # Responding to Heading Events
  didUpdateHeading: Protocol.optionalMethod ("locationManager:didUpdateHeading:")
  shouldDisplayHeadingCalibration: Protocol.optionalMethod ("locationManagerShouldDisplayHeadingCalibration:")

  # Responding to Region Events
  didEnterRegion: Protocol.optionalMethod ("locationManager:didEnterRegion:")
  didExitRegion: Protocol.optionalMethod ("locationManager:didExitRegion:")
  monitoringDidFail: Protocol.optionalMethod ("locationManager:monitoringDidFailForRegion:withError:")
  didStartMonitoring: Protocol.optionalMethod ("locationManager:didStartMonitoringForRegion:")

  # Responding to Authorization Changes
  didChangeAuthorizationStatus: Protocol.optionalMethod ("locationManager:didChangeAuthorizationStatus:")

new ck.RegisterAttribute CLLocationManagerDelegate, "CLLocationManagerDelegate"
exports.CLLocationManagerDelegate = CLLocationManagerDelegate
