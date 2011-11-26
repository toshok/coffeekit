# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKAnnotation"
Protocol = foundation.Protocol

class MKAnnotation extends foundation.Protocol

  # Position Attributes
  coordinate:     Protocol.optionalProperty "coordinate"
  setCoordinate:  Protocol.optionalMethod "setCoordinate:"

  # Title Attributes
  title:          Protocol.optionalProperty "title"
  subtitle:       Protocol.optionalProperty "subtitle"

new ck.RegisterAttribute MKAnnotation, "MKAnnotation"
exports.MKAnnotation = MKAnnotation
