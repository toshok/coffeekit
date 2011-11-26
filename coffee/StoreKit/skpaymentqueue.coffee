# This file is part of coffeekit.  for licensing information, see the LICENSE file

class SKPaymentQueue extends NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Determining Whether the User Can Make Payments
  @canMakePayments: objc.invokeSelector ("canMakePayments")

  # Getting the Queue
  @defaultQueue: objc.invokeSelector ("defaultQueue")

  # Adding and Removing the Observer
  addTransactionObserver: objc.invokeSelector ("addTransactionObserver:")
  removeTransactionObserver: objc.invokeSelector ("removeTransactionObserver:")

  # Managing Transactions
  ck.addProperty @::, "transactions"
  addPayment: objc.invokeSelector ("addPayment:")
  finishTransaction: objc.invokeSelector ("finishTransaction:")

  # Restoring Purchases
  restoreCompletedTransactions: objc.invokeSelector ("restoreCompletedTransactions")

new ck.RegisterAttribute SKPaymentQueue, "SKPaymentQueue"
exports.SKPaymentQueue = SKPaymentQueue
