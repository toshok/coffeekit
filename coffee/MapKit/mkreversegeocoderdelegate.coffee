# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKReverseGeocoderDelegate"

exports.MKReverseGeocoderDelegate = class MKReverseGeocoderDelegate extends foundation.Protocol
  # Processing Placemark Searches
  didFail:            @optionalMethod "reverseGeocoder:didFailWithError:" # Deprecated in iOS 5.0
  didFindPlacemark:   @optionalMethod "reverseGeocoder:didFindPlacemark:" # Deprecated in iOS 5.0

  @register()
