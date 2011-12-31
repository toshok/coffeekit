# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKUserTrackingBarButtonItem = class MKUserTrackingBarButtonItem extends ui.UIBarButtonItem
  @register()

  # Initializing
  initWithMapView: objc.invokeSelector "initWithMapView:"

  # Accessing Properties
  ck.instanceProperty @, "mapView"
