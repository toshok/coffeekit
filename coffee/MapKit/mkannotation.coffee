# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "MKAnnotation"

exports.MKAnnotation = class MKAnnotation extends foundation.Protocol
  # Position Attributes
  coordinate:     @optionalProperty "coordinate"
  setCoordinate:  @optionalMethod "setCoordinate:"

  # Title Attributes
  title:          @optionalProperty "title"
  subtitle:       @optionalProperty "subtitle"

  @register()
