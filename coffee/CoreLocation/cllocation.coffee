# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CLLocation extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Initializing a Location Object
  initWithLatitudeAndlongitude: objc.invokeSelector ("initWithLatitude:longitude:")
  initWithCoordinate: objc.invokeSelector ("initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:timestamp:")
  initWithCoordinateAndSpeed: objc.invokeSelector ("initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:speed:timestamp:")

  # Location Attributes
  ck.addProperty @::, "coordinate"
  ck.addProperty @::, "altitude"
  ck.addProperty @::, "horizontalAccuracy"
  ck.addProperty @::, "verticalAccuracy"
  ck.addProperty @::, "timestamp"
  description: objc.invokeSelector ("description")

  # Measuring the Distance Between Coordinates
  distanceFromLocation: objc.invokeSelector ("distanceFromLocation:")
  getDistanceFrom: objc.invokeSelector ("getDistanceFrom:")            # Deprecated in iOS 3.2

  # Getting Speed and Course Information
  ck.addProperty @::, "speed"
  ck.addProperty @::, "course"

new ck.RegisterAttribute CLLocation, "CLLocation"
exports.CLLocation = CLLocation
