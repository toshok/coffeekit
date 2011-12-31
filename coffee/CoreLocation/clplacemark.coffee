# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CLPlacemark = class CLPlacemark extends foundation.NSObject
  @register()

  # Initializing a Placemark Object
  initWithPlacemark: objc.invokeSelector "initWithPlacemark:"

  # Accessing the Location Data
  ck.instanceProperty @, "location"

  # Accessing the Placemark Attributes
  ck.instanceProperty @, "name"
  ck.instanceProperty @, "addressDictionary"
  ck.instanceProperty @, "ISOcountryCode"
  ck.instanceProperty @, "country"
  ck.instanceProperty @, "postalCode"
  ck.instanceProperty @, "administrativeArea"
  ck.instanceProperty @, "subAdministrativeArea"
  ck.instanceProperty @, "locality"
  ck.instanceProperty @, "subLocality"
  ck.instanceProperty @, "thoroughfare"
  ck.instanceProperty @, "subThoroughfare"
  ck.instanceProperty @, "region"

  # Accessing Geographic Information
  ck.instanceProperty @, "inlandWater"
  ck.instanceProperty @, "ocean"

  # Accessing Landmark Information
  ck.instanceProperty @, "areasOfInterest"
