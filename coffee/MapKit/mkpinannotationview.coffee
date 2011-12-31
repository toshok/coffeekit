# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKPinAnnotationView = class MKPinAnnotationView extends ui.UIView
  @register()

  # Getting and Setting Attributes
  ck.instanceProperty @, "pinColor"
  ck.instanceProperty @, "animatesDrop"
