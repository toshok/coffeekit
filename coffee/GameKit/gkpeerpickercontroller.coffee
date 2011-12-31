# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKPeerPickerController = class GKPeerPickerController extends ui.UINavigationController
  @register()

  # Setting and Getting the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKPeerPickerControllerDelegate) }

  # Displaying the Picker Dialog
  show: objc.invokeSelector "show"
  dismiss: objc.invokeSelector "dismiss"
  ck.instanceProperty @, "visible"

  # Configuring Connectivity Options
  ck.instanceProperty @, "connectionTypesMask"
