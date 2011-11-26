# This file is part of coffeekit.  for licensing information, see the LICENSE file

class SKProductsRequest extends SKRequest
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Initializing a Products sRequest
  initWithProductIdentifiers: objc.invokeSelector ("initWithProductIdentifiers:")

  # Setting the Delegate
  ck.addProperty @::, "delegate", set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, SKProductsRequestDelegate)

new ck.RegisterAttribute SKProductsRequest, "SKProductsRequest"
exports.SKProductsRequest = SKProductsRequest
