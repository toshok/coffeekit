# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKProductsResponse = class SKProductsResponse extends NSObject
  # Response Information
  @instanceProperty "products"
  @instanceProperty "invalidProductIdentifiers"

  @register()
