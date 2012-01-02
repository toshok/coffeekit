# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKPinAnnotationView = class MKPinAnnotationView extends ui.UIView
  # Getting and Setting Attributes
  @instanceProperty "pinColor"
  @instanceProperty "animatesDrop"

  @register()
