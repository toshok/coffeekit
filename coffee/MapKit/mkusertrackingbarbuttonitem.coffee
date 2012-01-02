# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKUserTrackingBarButtonItem = class MKUserTrackingBarButtonItem extends ui.UIBarButtonItem
  # Initializing
  initWithMapView: @nativeSelector "initWithMapView:"

  # Accessing Properties
  @instanceProperty "mapView"

  @register()
