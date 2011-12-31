# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKMapViewDelgate"
Protocol = foundation.Protocol

exports.SKPaymentTransactionObserver = class SKPaymentTransactionObserver extends foundation.Protocol
  @register()

  # Handling Transactions
  updatedTransactions: Protocol.requiredMethod ("paymentQueue:updatedTransactions:")
  removedTransactions: Protocol.optionalMethod ("paymentQueue:removedTransactions:")

  # Handling Restored Transactions
  restoreCompletedTransactionsFailedWithError:      Protocol.optionalMethod ("paymentQueue:restoreCompletedTransactionsFailedWithError:")
  paymentQueueRestoreCompletedTransactionsFinished: Protocol.optionalMethod ("paymentQueueRestoreCompletedTransactionsFinished:")
