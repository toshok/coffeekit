# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKPaymentTransaction = class SKPaymentTransaction extends NSObject
  @register()

  # Getting Information About the Transaction
  ck.instanceProperty @, "error"
  ck.instanceProperty @, "payment"
  ck.instanceProperty @, "transactionState"
  ck.instanceProperty @, "transactionIdentifier"
  ck.instanceProperty @, "transactionReceipt"
  ck.instanceProperty @, "transactionDate"

  # Restored Transactions
  ck.instanceProperty @, "originalTransaction"
