# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKReverseGeocoder extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Initializing the Reverse Geocoder
  initWithCoordinate: objc.invokeSelector ("initWithCoordinate:") # Deprecated in iOS 5.0

  # Accessing Reverse Geocoder Attributes
  ck.addProperty @::, "coordinate" # Deprecated in iOS 5.0
  ck.addProperty @::, "delegate" # Deprecated in iOS 5.0
  ck.addProperty @::, "placemark" # Deprecated in iOS 5.0

  # Managing the Search
  ck.addProperty @::, "querying" # Deprecated in iOS 5.0
  cancel: objc.invokeSelector ("cancel") # Deprecated in iOS 5.0
  start: objc.invokeSelector ("start") # Deprecated in iOS 5.0

new ck.RegisterAttribute MKReverseGeocoder, "MKReverseGeocoder"
exports.MKReverseGeocoder = MKReverseGeocoder
