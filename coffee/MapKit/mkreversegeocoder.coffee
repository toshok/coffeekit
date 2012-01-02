# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKReverseGeocoder = class MKReverseGeocoder extends foundation.NSObject
  # Initializing the Reverse Geocoder
  initWithCoordinate: @nativeSelector "initWithCoordinate:" # Deprecated in iOS 5.0

  # Accessing Reverse Geocoder Attributes
  @instanceProperty "coordinate" # Deprecated in iOS 5.0
  @autoboxProperty "delegate", MKReverseGeocoderDelegate # Deprecated in iOS 5.0
  @instanceProperty "placemark" # Deprecated in iOS 5.0

  # Managing the Search
  @instanceProperty "querying" # Deprecated in iOS 5.0
  cancel: @nativeSelector "cancel" # Deprecated in iOS 5.0
  start: @nativeSelector "start" # Deprecated in iOS 5.0

  @register()
