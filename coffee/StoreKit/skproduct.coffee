# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKProduct = class SKProduct extends NSObject
  @register()

  # Getting Product Attributes
  ck.instanceProperty @, "localizedDescription"
  ck.instanceProperty @, "localizedTitle"
  ck.instanceProperty @, "price"
  ck.instanceProperty @, "priceLocale"
  ck.instanceProperty @, "productIdentifier"
