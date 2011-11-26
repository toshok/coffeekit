# This file is part of coffeekit.  for licensing information, see the LICENSE file

class SKPaymentTransaction extends NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Getting Information About the Transaction
  ck.addProperty @::, "error"
  ck.addProperty @::, "payment"
  ck.addProperty @::, "transactionState"
  ck.addProperty @::, "transactionIdentifier"
  ck.addProperty @::, "transactionReceipt"
  ck.addProperty @::, "transactionDate"

  # Restored Transactions
  ck.addProperty @::, "originalTransaction"

new ck.RegisterAttribute SKPaymentTransaction, "SKPaymentTransaction"
exports.SKPaymentTransaction = SKPaymentTransaction
