# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CLLocation = class CLLocation extends foundation.NSObject
  @register()

  # Initializing a Location Object
  initWithLatitudeAndlongitude: objc.invokeSelector "initWithLatitude:longitude:"
  initWithCoordinate: objc.invokeSelector "initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:timestamp:"
  initWithCoordinateAndSpeed: objc.invokeSelector "initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:speed:timestamp:"

  # Location Attributes
  ck.instanceProperty @, "coordinate"
  ck.instanceProperty @, "altitude"
  ck.instanceProperty @, "horizontalAccuracy"
  ck.instanceProperty @, "verticalAccuracy"
  ck.instanceProperty @, "timestamp"
  description: objc.invokeSelector "description"

  # Measuring the Distance Between Coordinates
  distanceFromLocation: objc.invokeSelector "distanceFromLocation:"
  getDistanceFrom: objc.invokeSelector "getDistanceFrom:"            # Deprecated in iOS 3.2

  # Getting Speed and Course Information
  ck.instanceProperty @, "speed"
  ck.instanceProperty @, "course"
