# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKMapViewDelgate"

exports.SKRequestDelegate = class SKRequestDelegate extends foundation.Protocol
  # Completing Requests
  requestDidFinish: @optionalMethod "requestDidFinish:"

  # Handling Errrors
  requestDidFail: @optionalMethod "request:didFailWithError:"

  @register()
