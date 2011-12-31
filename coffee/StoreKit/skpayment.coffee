# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKPayment = class SKPayment extends NSObject
  @register()

  # Creating Instances
  @paymentWithProduct: objc.invokeSelector "paymentWithProduct:"
  @paymentWithProductIdentifier: objc.invokeSelector "paymentWithProductIdentifier:" # Deprecated in iOS 5.0

  # Getting Attributes
  ck.instanceProperty @, "productIdentifier"
  ck.instanceProperty @, "quantity"
  ck.instanceProperty @, "requestData"
