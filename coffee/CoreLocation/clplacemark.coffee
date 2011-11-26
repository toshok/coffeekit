# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CLPlacemark extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Initializing a Placemark Object
  initWithPlacemark: objc.invokeSelector ("initWithPlacemark:")

  # Accessing the Location Data
  ck.addProperty @::, "location"

  # Accessing the Placemark Attributes
  ck.addProperty @::, "name"
  ck.addProperty @::, "addressDictionary"
  ck.addProperty @::, "ISOcountryCode"
  ck.addProperty @::, "country"
  ck.addProperty @::, "postalCode"
  ck.addProperty @::, "administrativeArea"
  ck.addProperty @::, "subAdministrativeArea"
  ck.addProperty @::, "locality"
  ck.addProperty @::, "subLocality"
  ck.addProperty @::, "thoroughfare"
  ck.addProperty @::, "subThoroughfare"
  ck.addProperty @::, "region"

  # Accessing Geographic Information
  ck.addProperty @::, "inlandWater"
  ck.addProperty @::, "ocean"

  # Accessing Landmark Information
  ck.addProperty @::, "areasOfInterest"

new ck.RegisterAttribute CLPlacemark, "CLPlacemark"
exports.CLPlacemark = CLPlacemark
