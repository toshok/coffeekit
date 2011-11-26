# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKMapViewDelgate"
Protocol = foundation.Protocol

class SKRequestDelegate extends foundation.Protocol

  # Completing Requests
  requestDidFinish: Protocol.optionalMethod ("requestDidFinish:")

  # Handling Errrors
  requestDidFail: Protocol.optionalMethod ("request:didFailWithError:")

new ck.RegisterAttribute SKRequestDelegate, "SKRequestDelegate"
exports.SKRequestDelegate = SKRequestDelegate
