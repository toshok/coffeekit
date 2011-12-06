# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "CAAnimationDelegate"
Protocol = foundation.Protocol

class CAAnimationDelegate extends foundation.Protocol

  # Animation Progress
  animationDidStart: Protocol.optionalMethod "animationDidStart"
  animationDidStop:  Protocol.optionalMethod "animationDidStop"

new ck.RegisterAttribute CAAnimationDelegate, "CAAnimationDelegate"
exports.CAAnimationDelegate = CAAnimationDelegate
