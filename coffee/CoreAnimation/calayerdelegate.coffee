# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "CALayerDelegate"
Protocol = foundation.Protocol

class CALayerDelegate extends foundation.Protocol

  # Providing Layer Content

  displayLayer:  Protocol.optionalMethod "displayLayer"
  drawLayer:      Protocol.optionalMethod "drawLayer:inContext:"

  # Actions
  actionForLayer: Protocol.optionalMethod "actionForLayer:forKey:"

new ck.RegisterAttribute CALayerDelegate, "CALayerDelegate"
exports.CALayerDelegate = CALayerDelegate
