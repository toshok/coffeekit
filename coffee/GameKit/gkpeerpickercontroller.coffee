# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKPeerPickerController extends ui.UINavigationController
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Setting and Getting the Delegate
  ck.addProperty @::, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKPeerPickerControllerDelegate) }

  # Displaying the Picker Dialog
  show: objc.invokeSelector ("show")
  dismiss: objc.invokeSelector ("dismiss")
  ck.addProperty @::, "visible"

  # Configuring Connectivity Options
  ck.addProperty @::, "connectionTypesMask"

new ck.RegisterAttribute GKPeerPickerController, "GKPeerPickerController"
exports.GKPeerPickerController = GKPeerPickerController
