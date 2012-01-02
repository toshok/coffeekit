# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKProductsRequest = class SKProductsRequest extends SKRequest
  # Initializing a Products sRequest
  initWithProductIdentifiers: @nativeSelector "initWithProductIdentifiers:"

  # Setting the Delegate
  @autoboxProperty "delegate", SKProductsRequestDelegate

  @register()
