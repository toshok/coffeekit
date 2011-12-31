# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKProductsRequest = class SKProductsRequest extends SKRequest
  @register()

  # Initializing a Products sRequest
  initWithProductIdentifiers: objc.invokeSelector "initWithProductIdentifiers:"

  # Setting the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, SKProductsRequestDelegate) }
