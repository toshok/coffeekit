# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKReverseGeocoderDelegate"
Protocol = foundation.Protocol

class MKReverseGeocoderDelegate extends foundation.Protocol

  # Processing Placemark Searches
  didFail:            Protocol.optionalMethod "reverseGeocoder:didFailWithError:" # Deprecated in iOS 5.0
  didFindPlacemark:   Protocol.optionalMethod "reverseGeocoder:didFindPlacemark:" # Deprecated in iOS 5.0

new ck.RegisterAttribute MKReverseGeocoderDelegate, "MKReverseGeocoderDelegate"
exports.MKReverseGeocoderDelegate = MKReverseGeocoderDelegate