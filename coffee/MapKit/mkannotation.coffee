# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKAnnotation"
Protocol = foundation.Protocol

exports.MKAnnotation = class MKAnnotation extends foundation.Protocol
  @register()

  # Position Attributes
  coordinate:     Protocol.optionalProperty "coordinate"
  setCoordinate:  Protocol.optionalMethod "setCoordinate:"

  # Title Attributes
  title:          Protocol.optionalProperty "title"
  subtitle:       Protocol.optionalProperty "subtitle"
