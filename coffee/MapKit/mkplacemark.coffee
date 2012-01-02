# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKPlacemark = class MKPlacemark extends cl.CLPlacemark
  # Initializing a Placemark Object
  initWithCoordinate: @nativeSelector "initWithCoordinate:addressDictionary:"

  # Accessing the Placemark Attributes
  @instanceProperty "countryCode"

  @register()
