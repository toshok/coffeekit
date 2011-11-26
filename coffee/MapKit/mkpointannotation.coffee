# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKPointAnnotation extends MKShape
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Accessing the Annotation’s Location
  ck.addProperty @::, "coordinate"

new ck.RegisterAttribute MKPointAnnotation, "MKPointAnnotation"
exports.MKPointAnnotation = MKPointAnnotation
