# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKShape extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Accessing the Shape Attributes
  ck.addProperty @::, "title"
  ck.addProperty @::, "subtitle"

new ck.RegisterAttribute MKShape, "MKShape"
exports.MKShape = MKShape
