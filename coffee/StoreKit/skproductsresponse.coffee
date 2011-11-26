# This file is part of coffeekit.  for licensing information, see the LICENSE file

class SKProductsResponse extends NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Response Information
  ck.addProperty @::, "products"
  ck.addProperty @::, "invalidProductIdentifiers"

new ck.RegisterAttribute SKProductsResponse, "SKProductsResponse"
exports.SKProductsResponse = SKProductsResponse
