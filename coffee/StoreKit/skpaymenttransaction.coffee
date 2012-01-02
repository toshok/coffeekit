# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKPaymentTransaction = class SKPaymentTransaction extends NSObject
  # Getting Information About the Transaction
  @instanceProperty "error"
  @instanceProperty "payment"
  @instanceProperty "transactionState"
  @instanceProperty "transactionIdentifier"
  @instanceProperty "transactionReceipt"
  @instanceProperty "transactionDate"

  # Restored Transactions
  @instanceProperty "originalTransaction"

  @register()
