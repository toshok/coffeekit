# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKPeerPickerController = class GKPeerPickerController extends ui.UINavigationController
  # Setting and Getting the Delegate
  @autoboxProperty "delegate", GKPeerPickerControllerDelegate

  # Displaying the Picker Dialog
  show: @nativeSelector "show"
  dismiss: @nativeSelector "dismiss"
  @instanceProperty "visible"

  # Configuring Connectivity Options
  @instanceProperty "connectionTypesMask"

  @register()
