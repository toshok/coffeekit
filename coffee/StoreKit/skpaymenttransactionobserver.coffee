# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKMapViewDelgate"

exports.SKPaymentTransactionObserver = class SKPaymentTransactionObserver extends foundation.Protocol
  # Handling Transactions
  updatedTransactions: @requiredMethod "paymentQueue:updatedTransactions:"
  removedTransactions: @optionalMethod "paymentQueue:removedTransactions:"

  # Handling Restored Transactions
  restoreCompletedTransactionsFailedWithError:      @optionalMethod "paymentQueue:restoreCompletedTransactionsFailedWithError:"
  paymentQueueRestoreCompletedTransactionsFinished: @optionalMethod "paymentQueueRestoreCompletedTransactionsFinished:"

  @register()
