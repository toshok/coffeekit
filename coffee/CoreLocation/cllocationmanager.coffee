# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CLLocationManager extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Accessing the Delegate
  ck.addProperty @::, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, CLLocationManagerDelegate) }

  # Determining the Availability of Services
  @authorizationStatus: objc.invokeSelector ("authorizationStatus")
  @locationServicesEnabled: objc.invokeSelector ("locationServicesEnabled")
  @significantLocationChangeMonitoringAvailable: objc.invokeSelector ("significantLocationChangeMonitoringAvailable")
  @headingAvailable: objc.invokeSelector ("headingAvailable")
  @regionMonitoringAvailable: objc.invokeSelector ("regionMonitoringAvailable")
  @regionMonitoringEnabled: objc.invokeSelector ("regionMonitoringEnabled")
  ck.addProperty @::, "headingAvailable" Deprecated in iOS 4.0
  ck.addProperty @::, "locationServicesEnabled" Deprecated in iOS 4.0

  # Initiating Standard Location Updates
  startUpdatingLocation: objc.invokeSelector ("startUpdatingLocation")
  stopUpdatingLocation: objc.invokeSelector ("stopUpdatingLocation")
  ck.addProperty @::, "distanceFilter"
  ck.addProperty @::, "desiredAccuracy"

  # Initiating Significant Location Updates
  startMonitoringSignificantLocationChanges: objc.invokeSelector ("startMonitoringSignificantLocationChanges")
  stopMonitoringSignificantLocationChanges: objc.invokeSelector ("stopMonitoringSignificantLocationChanges")

  # Initiating Heading Updates
  startUpdatingHeading: objc.invokeSelector ("startUpdatingHeading")
  stopUpdatingHeading: objc.invokeSelector ("stopUpdatingHeading")
  dismissHeadingCalibrationDisplay: objc.invokeSelector ("dismissHeadingCalibrationDisplay")
  ck.addProperty @::, "headingFilter"
  ck.addProperty @::, "headingOrientation"

  # Initiating Region Monitoring
  startMonitoringForRegion: objc.invokeSelector ("startMonitoringForRegion:")
  startMonitoringForRegionWithDesiredAccuracy: objc.invokeSelector ("startMonitoringForRegion:desiredAccuracy:")
  stopMonitoringForRegion: objc.invokeSelector ("stopMonitoringForRegion:")
  ck.addProperty @::, "monitoredRegions"
  ck.addProperty @::, "maximumRegionMonitoringDistance"

  # Getting Recently Retrieved Data
  ck.addProperty @::, "location"
  ck.addProperty @::, "heading"

  # Describing Your Application’s Services to the User
  ck.addProperty @::, "purpose"


new ck.RegisterAttribute CLLocationManager, "CLLocationManager"
exports.CLLocationManager = CLLocationManager
