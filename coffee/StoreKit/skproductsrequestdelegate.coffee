# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKMapViewDelgate"
Protocol = foundation.Protocol

exports.SKProductsRequestDelegate = class SKProductsRequestDelegate extends SKRequestDelegate
  @register()

  # Receiving the Response
  didReceiveResponse: Protocol.requiredMethod ("productsRequest:didReceiveResponse:")
