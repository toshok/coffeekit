# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKPayment = class SKPayment extends NSObject
  # Creating Instances
  @paymentWithProduct: @nativeSelector "paymentWithProduct:"
  @paymentWithProductIdentifier: @nativeSelector "paymentWithProductIdentifier:" # Deprecated in iOS 5.0

  # Getting Attributes
  @instanceProperty "productIdentifier"
  @instanceProperty "quantity"
  @instanceProperty "requestData"

  @register()
