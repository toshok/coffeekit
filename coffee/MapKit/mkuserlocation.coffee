# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKUserLocation = class MKUserLocation extends foundation.NSObject
  @register()

  # Determining the User’s Position
  ck.instanceProperty @, "location"
  ck.instanceProperty @, "updating"
  ck.instanceProperty @, "heading"

  # Accessing the User Annotation Text
  ck.instanceProperty @, "title"
  ck.instanceProperty @, "subtitle"
