# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKProduct = class SKProduct extends NSObject
  # Getting Product Attributes
  @instanceProperty "localizedDescription"
  @instanceProperty "localizedTitle"
  @instanceProperty "price"
  @instanceProperty "priceLocale"
  @instanceProperty "productIdentifier"

  @register()
