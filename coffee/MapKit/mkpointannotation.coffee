# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKPointAnnotation = class MKPointAnnotation extends MKShape
  @register()

  # Accessing the Annotation’s Location
  ck.instanceProperty @, "coordinate"
