# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKReverseGeocoder = class MKReverseGeocoder extends foundation.NSObject
  @register()

  # Initializing the Reverse Geocoder
  initWithCoordinate: objc.invokeSelector "initWithCoordinate:" # Deprecated in iOS 5.0

  # Accessing Reverse Geocoder Attributes
  ck.instanceProperty @, "coordinate" # Deprecated in iOS 5.0
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, MKReverseGeocoderDelegate) } # Deprecated in iOS 5.0
  ck.instanceProperty @, "placemark" # Deprecated in iOS 5.0

  # Managing the Search
  ck.instanceProperty @, "querying" # Deprecated in iOS 5.0
  cancel: objc.invokeSelector "cancel" # Deprecated in iOS 5.0
  start: objc.invokeSelector "start" # Deprecated in iOS 5.0
