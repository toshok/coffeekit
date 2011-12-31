# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKMapViewDelgate"
Protocol = foundation.Protocol

exports.SKRequestDelegate = class SKRequestDelegate extends foundation.Protocol
  @register()

  # Completing Requests
  requestDidFinish: Protocol.optionalMethod ("requestDidFinish:")

  # Handling Errrors
  requestDidFail: Protocol.optionalMethod ("request:didFailWithError:")
