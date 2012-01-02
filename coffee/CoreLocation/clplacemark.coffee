# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CLPlacemark = class CLPlacemark extends foundation.NSObject
  # Initializing a Placemark Object
  initWithPlacemark: @nativeSelector "initWithPlacemark:"

  # Accessing the Location Data
  @instanceProperty "location"

  # Accessing the Placemark Attributes
  @instanceProperty "name"
  @instanceProperty "addressDictionary"
  @instanceProperty "ISOcountryCode"
  @instanceProperty "country"
  @instanceProperty "postalCode"
  @instanceProperty "administrativeArea"
  @instanceProperty "subAdministrativeArea"
  @instanceProperty "locality"
  @instanceProperty "subLocality"
  @instanceProperty "thoroughfare"
  @instanceProperty "subThoroughfare"
  @instanceProperty "region"

  # Accessing Geographic Information
  @instanceProperty "inlandWater"
  @instanceProperty "ocean"

  # Accessing Landmark Information
  @instanceProperty "areasOfInterest"

  @register()
