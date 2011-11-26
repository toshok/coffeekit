# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CLGeocoder extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Reverse Geocoding a Location
  reverseGeocodeLocation: objc.invokeSelector ("reverseGeocodeLocation:completionHandler:")

  # Geocoding an Address
  geocodeAddressDictionary: objc.invokeSelector ("geocodeAddressDictionary:completionHandler:")
  geocodeAddressString: objc.invokeSelector ("geocodeAddressString:completionHandler:")
  geocodeAddressStringInRegion: objc.invokeSelector ("geocodeAddressString:inRegion:completionHandler:")

  # Managing Geocoding Requests
  cancelGeocode: objc.invokeSelector ("cancelGeocode")
  ck.addProperty @::, "geocoding"

new ck.RegisterAttribute CLGeocoder, "CLGeocoder"
exports.CLGeocoder = CLGeocoder
