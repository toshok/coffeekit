# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISplitViewController"
class UISplitViewController extends UIViewController

  # Managing the Child View Controllers
  ck.addProperty @::, "viewControllers"

  # Accessing the Delegate Object
  ck.addProperty @::, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UISplitViewController) }

new ck.RegisterAttribute UISplitViewController, "UISplitViewController"
exports.UISplitViewController = UISplitViewController
