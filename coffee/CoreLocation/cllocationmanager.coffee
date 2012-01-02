# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CLLocationManager = class CLLocationManager extends foundation.NSObject
  # Accessing the Delegate
  @autoboxProperty "delegate", CLLocationManagerDelegate

  # Determining the Availability of Services
  @authorizationStatus: @nativeSelector "authorizationStatus"
  @locationServicesEnabled: @nativeSelector "locationServicesEnabled"
  @significantLocationChangeMonitoringAvailable: @nativeSelector "significantLocationChangeMonitoringAvailable"
  @headingAvailable: @nativeSelector "headingAvailable"
  @regionMonitoringAvailable: @nativeSelector "regionMonitoringAvailable"
  @regionMonitoringEnabled: @nativeSelector "regionMonitoringEnabled"
  @instanceProperty "headingAvailable" # Deprecated in iOS 4.0
  @instanceProperty "locationServicesEnabled" # Deprecated in iOS 4.0

  # Initiating Standard Location Updates
  startUpdatingLocation: @nativeSelector "startUpdatingLocation"
  stopUpdatingLocation: @nativeSelector "stopUpdatingLocation"
  @instanceProperty "distanceFilter"
  @instanceProperty "desiredAccuracy"

  # Initiating Significant Location Updates
  startMonitoringSignificantLocationChanges: @nativeSelector "startMonitoringSignificantLocationChanges"
  stopMonitoringSignificantLocationChanges: @nativeSelector "stopMonitoringSignificantLocationChanges"

  # Initiating Heading Updates
  startUpdatingHeading: @nativeSelector "startUpdatingHeading"
  stopUpdatingHeading: @nativeSelector "stopUpdatingHeading"
  dismissHeadingCalibrationDisplay: @nativeSelector "dismissHeadingCalibrationDisplay"
  @instanceProperty "headingFilter"
  @instanceProperty "headingOrientation"

  # Initiating Region Monitoring
  startMonitoringForRegion: @nativeSelector "startMonitoringForRegion:"
  startMonitoringForRegionWithDesiredAccuracy: @nativeSelector "startMonitoringForRegion:desiredAccuracy:"
  stopMonitoringForRegion: @nativeSelector "stopMonitoringForRegion:"
  @instanceProperty "monitoredRegions"
  @instanceProperty "maximumRegionMonitoringDistance"

  # Getting Recently Retrieved Data
  @instanceProperty "location"
  @instanceProperty "heading"

  # Describing Your Application’s Services to the User
  @instanceProperty "purpose"

  @register()
