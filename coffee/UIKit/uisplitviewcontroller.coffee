# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISplitViewController"
exports.UISplitViewController = class UISplitViewController extends UIViewController
  # Managing the Child View Controllers
  @instanceProperty "viewControllers"

  # Accessing the Delegate Object
  @autoboxProperty "delegate", UISplitViewController

  @register()
