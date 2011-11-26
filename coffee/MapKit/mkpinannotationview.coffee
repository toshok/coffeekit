# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKPinAnnotationView extends ui.UIView
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Getting and Setting Attributes
  ck.addProperty @::, "pinColor"
  ck.addProperty @::, "animatesDrop"

new ck.RegisterAttribute MKPinAnnotationView, "MKPinAnnotationView"
exports.MKPinAnnotationView = MKPinAnnotationView
