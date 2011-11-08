# This file is part of coffeekit.  for licensing information, see the LICENSE file

Protocol = foundation.Protocol

class GLKViewControllerDelegate extends foundation.Protocol

  # Handling an Update Event
  update:    Protocol.requiredMethod("glkViewControllerUpdate:", {sig: "v@:"})

  # Pause and Resume Notifications
  willPause: Protocol.optionalMethod("glkViewController:willPause:" , {sig: "v@:@B"})

new ck.RegisterAttribute GLKViewControllerDelegate, "GLKViewControllerDelegate"
exports.GLKViewControllerDelegate = GLKViewControllerDelegate
