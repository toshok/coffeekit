# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISplitViewController"
exports.UISplitViewController = class UISplitViewController extends UIViewController
  @register()

  # Managing the Child View Controllers
  ck.instanceProperty @, "viewControllers"

  # Accessing the Delegate Object
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UISplitViewController) }
