# This file is part of coffeekit.  for licensing information, see the LICENSE file

class SKProduct extends NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Getting Product Attributes
  ck.addProperty @::, "localizedDescription"
  ck.addProperty @::, "localizedTitle"
  ck.addProperty @::, "price"
  ck.addProperty @::, "priceLocale"
  ck.addProperty @::, "productIdentifier"

new ck.RegisterAttribute SKProduct, "SKProduct"
exports.SKProduct = SKProduct
