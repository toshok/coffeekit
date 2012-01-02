# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKMutablePayment = class SKMutablePayment extends SKPayment
  # Getting and Setting Attributes
  @instanceProperty "productIdentifier"
  @instanceProperty "quantity"
  @instanceProperty "requestData"

  @register()
