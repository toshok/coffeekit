# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKProductsResponse = class SKProductsResponse extends NSObject
  @register()

  # Response Information
  ck.instanceProperty @, "products"
  ck.instanceProperty @, "invalidProductIdentifiers"
