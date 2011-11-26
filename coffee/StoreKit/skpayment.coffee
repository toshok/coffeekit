# This file is part of coffeekit.  for licensing information, see the LICENSE file

class SKPayment extends NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Creating Instances
  @paymentWithProduct: objc.invokeSelector ("paymentWithProduct:")
  @paymentWithProductIdentifier: objc.invokeSelector ("paymentWithProductIdentifier:") # Deprecated in iOS 5.0

  # Getting Attributes
  ck.addProperty @::, "productIdentifier"
  ck.addProperty @::, "quantity"
  ck.addProperty @::, "requestData"

new ck.RegisterAttribute SKPayment, "SKPayment"
exports.SKPayment = SKPayment
