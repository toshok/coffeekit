# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKPlacemark = class MKPlacemark extends cl.CLPlacemark
  @register()

  # Initializing a Placemark Object
  initWithCoordinate: objc.invokeSelector "initWithCoordinate:addressDictionary:"

  # Accessing the Placemark Attributes
  ck.instanceProperty @, "countryCode"
