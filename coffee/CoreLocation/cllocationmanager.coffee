# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CLLocationManager = class CLLocationManager extends foundation.NSObject
  @register()

  # Accessing the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, CLLocationManagerDelegate) }

  # Determining the Availability of Services
  @authorizationStatus: objc.invokeSelector "authorizationStatus"
  @locationServicesEnabled: objc.invokeSelector "locationServicesEnabled"
  @significantLocationChangeMonitoringAvailable: objc.invokeSelector "significantLocationChangeMonitoringAvailable"
  @headingAvailable: objc.invokeSelector "headingAvailable"
  @regionMonitoringAvailable: objc.invokeSelector "regionMonitoringAvailable"
  @regionMonitoringEnabled: objc.invokeSelector "regionMonitoringEnabled"
  ck.instanceProperty @, "headingAvailable" Deprecated in iOS 4.0
  ck.instanceProperty @, "locationServicesEnabled" Deprecated in iOS 4.0

  # Initiating Standard Location Updates
  startUpdatingLocation: objc.invokeSelector "startUpdatingLocation"
  stopUpdatingLocation: objc.invokeSelector "stopUpdatingLocation"
  ck.instanceProperty @, "distanceFilter"
  ck.instanceProperty @, "desiredAccuracy"

  # Initiating Significant Location Updates
  startMonitoringSignificantLocationChanges: objc.invokeSelector "startMonitoringSignificantLocationChanges"
  stopMonitoringSignificantLocationChanges: objc.invokeSelector "stopMonitoringSignificantLocationChanges"

  # Initiating Heading Updates
  startUpdatingHeading: objc.invokeSelector "startUpdatingHeading"
  stopUpdatingHeading: objc.invokeSelector "stopUpdatingHeading"
  dismissHeadingCalibrationDisplay: objc.invokeSelector "dismissHeadingCalibrationDisplay"
  ck.instanceProperty @, "headingFilter"
  ck.instanceProperty @, "headingOrientation"

  # Initiating Region Monitoring
  startMonitoringForRegion: objc.invokeSelector "startMonitoringForRegion:"
  startMonitoringForRegionWithDesiredAccuracy: objc.invokeSelector "startMonitoringForRegion:desiredAccuracy:"
  stopMonitoringForRegion: objc.invokeSelector "stopMonitoringForRegion:"
  ck.instanceProperty @, "monitoredRegions"
  ck.instanceProperty @, "maximumRegionMonitoringDistance"

  # Getting Recently Retrieved Data
  ck.instanceProperty @, "location"
  ck.instanceProperty @, "heading"

  # Describing Your Application’s Services to the User
  ck.instanceProperty @, "purpose"
