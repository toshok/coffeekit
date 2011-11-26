# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKUserLocation extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Determining the User’s Position
  ck.addProperty @::, "location"
  ck.addProperty @::, "updating"
  ck.addProperty @::, "heading"

  # Accessing the User Annotation Text
  ck.addProperty @::, "title"
  ck.addProperty @::, "subtitle"

new ck.RegisterAttribute MKUserLocation, "MKUserLocation"
exports.MKUserLocation = MKUserLocation
