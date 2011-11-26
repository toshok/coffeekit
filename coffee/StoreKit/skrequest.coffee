# This file is part of coffeekit.  for licensing information, see the LICENSE file

class SKRequest extends NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Controlling the Request
  start: objc.invokeSelector ("start")
  cancel: objc.invokeSelector ("cancel")

  # Accessing the Delegate
  ck.addProperty @::, "delegate", set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, SKRequestDelegate

new ck.RegisterAttribute SKRequest, "SKRequest"
exports.SKRequest = SKRequest
