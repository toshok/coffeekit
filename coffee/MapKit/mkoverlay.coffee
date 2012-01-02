# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKOverlay"

exports.MKOverlay = class MKOverlay extends foundation.Protocol
  # Describing the Overlay Geometry
  coordinate:          @optionalProperty "coordinate"
  boundingMapRect:     @optionalProperty "boundingMapRect"

  # Determining Map Intersections
  intersectsMapRect:   @optionalMethod "intersectsMapRect:"

  @register()
