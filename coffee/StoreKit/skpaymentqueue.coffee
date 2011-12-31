# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.SKPaymentQueue = class SKPaymentQueue extends NSObject
  @register()

  # Determining Whether the User Can Make Payments
  @canMakePayments: objc.invokeSelector "canMakePayments"

  # Getting the Queue
  @defaultQueue: objc.invokeSelector "defaultQueue"

  # Adding and Removing the Observer
  addTransactionObserver: objc.invokeSelector "addTransactionObserver:"
  removeTransactionObserver: objc.invokeSelector "removeTransactionObserver:"

  # Managing Transactions
  ck.instanceProperty @, "transactions"
  addPayment: objc.invokeSelector "addPayment:"
  finishTransaction: objc.invokeSelector "finishTransaction:"

  # Restoring Purchases
  restoreCompletedTransactions: objc.invokeSelector "restoreCompletedTransactions"
