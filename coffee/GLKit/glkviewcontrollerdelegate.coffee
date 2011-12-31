# This file is part of coffeekit.  for licensing information, see the LICENSE file

Protocol = foundation.Protocol

exports.GLKViewControllerDelegate = class GLKViewControllerDelegate extends foundation.Protocol
  @register()

  # Handling an Update Event
  update:    Protocol.requiredMethod("glkViewControllerUpdate:", {sig: "v@:"})

  # Pause and Resume Notifications
  willPause: Protocol.optionalMethod("glkViewController:willPause:" , {sig: "v@:@B"})
