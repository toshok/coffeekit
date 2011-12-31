# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKReverseGeocoderDelegate"
Protocol = foundation.Protocol

exports.MKReverseGeocoderDelegate = class MKReverseGeocoderDelegate extends foundation.Protocol
  @register()

  # Processing Placemark Searches
  didFail:            Protocol.optionalMethod "reverseGeocoder:didFailWithError:" # Deprecated in iOS 5.0
  didFindPlacemark:   Protocol.optionalMethod "reverseGeocoder:didFindPlacemark:" # Deprecated in iOS 5.0
