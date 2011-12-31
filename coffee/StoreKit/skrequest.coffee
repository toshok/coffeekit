# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKRequest = class SKRequest extends NSObject
  @register()

  # Controlling the Request
  start: objc.invokeSelector "start"
  cancel: objc.invokeSelector "cancel"

  # Accessing the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, SKRequestDelegate) }
