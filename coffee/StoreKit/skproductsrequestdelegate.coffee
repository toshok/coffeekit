# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKMapViewDelgate"
Protocol = foundation.Protocol

class SKProductsRequestDelegate extends SKRequestDelegate

  # Receiving the Response
  didReceiveResponse: Protocol.requiredMethod ("productsRequest:didReceiveResponse:")

new ck.RegisterAttribute SKProductsRequestDelegate, "SKProductsRequestDelegate"
exports.SKProductsRequestDelegate = SKProductsRequestDelegate
