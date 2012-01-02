# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKPointAnnotation = class MKPointAnnotation extends MKShape
  # Accessing the Annotation’s Location
  @instanceProperty "coordinate"

  @register()
