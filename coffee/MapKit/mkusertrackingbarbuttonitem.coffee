# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKUserTrackingBarButtonItem extends ui.UIBarButtonItem
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Initializing
  initWithMapView: objc.invokeSelector ("initWithMapView:")

  # Accessing Properties
  ck.addProperty @::, "mapView"

new ck.RegisterAttribute MKUserTrackingBarButtonItem, "MKUserTrackingBarButtonItem"
exports.MKUserTrackingBarButtonItem = MKUserTrackingBarButtonItem
