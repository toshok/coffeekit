# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "CAAnimationDelegate"
Protocol = foundation.Protocol

exports.CAAnimationDelegate = class CAAnimationDelegate extends foundation.Protocol
  @register()

  # Animation Progress
  animationDidStart: Protocol.optionalMethod "animationDidStart"
  animationDidStop:  Protocol.optionalMethod "animationDidStop"

