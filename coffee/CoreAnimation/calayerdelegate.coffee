# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "CALayerDelegate"

exports.CALayerDelegate = class CALayerDelegate extends foundation.Protocol
  # Providing Layer Content

  displayLayer:   @optionalMethod "displayLayer"
  drawLayer:      @optionalMethod "drawLayer:inContext:"

  # Actions
  actionForLayer: @optionalMethod "actionForLayer:forKey:"

  @register()
