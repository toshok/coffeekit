# This file is part of coffeekit.  for licensing information, see the LICENSE file

class SKMutablePayment extends SKPayment
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Getting and Setting Attributes
  ck.addProperty @::, "productIdentifier"
  ck.addProperty @::, "quantity"
  ck.addProperty @::, "requestData"

new ck.RegisterAttribute SKMutablePayment, "SKMutablePayment"
exports.SKMutablePayment = SKMutablePayment
