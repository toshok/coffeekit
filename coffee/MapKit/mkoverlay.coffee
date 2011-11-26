# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKOverlay"
Protocol = foundation.Protocol

class MKOverlay extends foundation.Protocol

  # Describing the Overlay Geometry
  coordinate:          Protocol.optionalProperty "coordinate"
  boundingMapRect:     Protocol.optionalProperty "boundingMapRect"

  # Determining Map Intersections
  intersectsMapRect:   Protocol.optionalMethod "intersectsMapRect:"

new ck.RegisterAttribute MKMKOverlay, "MKMKOverlay"
exports.MKMKOverlay = MKMKOverlay
