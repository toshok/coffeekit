# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKOverlay"
Protocol = foundation.Protocol

exports.MKOverlay = class MKOverlay extends foundation.Protocol
  @register()

  # Describing the Overlay Geometry
  coordinate:          Protocol.optionalProperty "coordinate"
  boundingMapRect:     Protocol.optionalProperty "boundingMapRect"

  # Determining Map Intersections
  intersectsMapRect:   Protocol.optionalMethod "intersectsMapRect:"
