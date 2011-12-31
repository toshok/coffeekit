# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKShape = class MKShape extends foundation.NSObject
  @register()

  # Accessing the Shape Attributes
  ck.instanceProperty @, "title"
  ck.instanceProperty @, "subtitle"
