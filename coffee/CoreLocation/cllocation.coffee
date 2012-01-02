# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CLLocation = class CLLocation extends foundation.NSObject
  # Initializing a Location Object
  initWithLatitudeAndlongitude: @nativeSelector "initWithLatitude:longitude:"
  initWithCoordinate: @nativeSelector "initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:timestamp:"
  initWithCoordinateAndSpeed: @nativeSelector "initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:speed:timestamp:"

  # Location Attributes
  @instanceProperty "coordinate"
  @instanceProperty "altitude"
  @instanceProperty "horizontalAccuracy"
  @instanceProperty "verticalAccuracy"
  @instanceProperty "timestamp"
  description: @nativeSelector "description"

  # Measuring the Distance Between Coordinates
  distanceFromLocation: @nativeSelector "distanceFromLocation:"
  getDistanceFrom: @nativeSelector "getDistanceFrom:"            # Deprecated in iOS 3.2

  # Getting Speed and Course Information
  @instanceProperty "speed"
  @instanceProperty "course"

  @register()
