# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKRequest = class SKRequest extends NSObject
  # Controlling the Request
  start: @nativeSelector "start"
  cancel: @nativeSelector "cancel"

  # Accessing the Delegate
  @autoboxProperty "delegate", SKRequestDelegate

  @register()
