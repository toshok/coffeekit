# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKUserLocation = class MKUserLocation extends foundation.NSObject
  # Determining the User’s Position
  @instanceProperty "location"
  @instanceProperty "updating"
  @instanceProperty "heading"

  # Accessing the User Annotation Text
  @instanceProperty "title"
  @instanceProperty "subtitle"

  @register()
