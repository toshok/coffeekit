# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKMutablePayment = class SKMutablePayment extends SKPayment
  @register()

  # Getting and Setting Attributes
  ck.instanceProperty @, "productIdentifier"
  ck.instanceProperty @, "quantity"
  ck.instanceProperty @, "requestData"
