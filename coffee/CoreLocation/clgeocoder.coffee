# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CLGeocoder = class CLGeocoder extends foundation.NSObject
  # Reverse Geocoding a Location
  reverseGeocodeLocation: @nativeSelector "reverseGeocodeLocation:completionHandler:"

  # Geocoding an Address
  geocodeAddressDictionary: @nativeSelector "geocodeAddressDictionary:completionHandler:"
  geocodeAddressString: @nativeSelector "geocodeAddressString:completionHandler:"
  geocodeAddressStringInRegion: @nativeSelector "geocodeAddressString:inRegion:completionHandler:"

  # Managing Geocoding Requests
  cancelGeocode: @nativeSelector "cancelGeocode"
  @instanceProperty "geocoding"

  @register()
