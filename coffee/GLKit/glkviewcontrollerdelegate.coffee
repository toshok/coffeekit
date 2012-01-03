# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKViewControllerDelegate = class GLKViewControllerDelegate extends foundation.Protocol
  # Handling an Update Event
  update:    @requiredMethod("glkViewControllerUpdate:", {sig: "v@:@"})

  # Pause and Resume Notifications
  willPause: @optionalMethod("glkViewController:willPause:" , {sig: "v@:@B"})

  @register()
