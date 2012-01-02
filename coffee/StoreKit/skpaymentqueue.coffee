# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKPaymentQueue = class SKPaymentQueue extends NSObject
  # Determining Whether the User Can Make Payments
  @canMakePayments: @nativeSelector "canMakePayments"

  # Getting the Queue
  @defaultQueue: @nativeSelector "defaultQueue"

  # Adding and Removing the Observer
  addTransactionObserver: @nativeSelector "addTransactionObserver:"
  removeTransactionObserver: @nativeSelector "removeTransactionObserver:"

  # Managing Transactions
  @instanceProperty "transactions"
  addPayment: @nativeSelector "addPayment:"
  finishTransaction: @nativeSelector "finishTransaction:"

  # Restoring Purchases
  restoreCompletedTransactions: @nativeSelector "restoreCompletedTransactions"

  @register()
