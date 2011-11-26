# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKPlacemark extends cl.CLPlacemark
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Initializing a Placemark Object
  initWithCoordinate: objc.invokeSelector ("initWithCoordinate:addressDictionary:")

  # Accessing the Placemark Attributes
  ck.addProperty @::, "countryCode"

new ck.RegisterAttribute MKPlacemark, "MKPlacemark"
exports.MKPlacemark = MKPlacemark
