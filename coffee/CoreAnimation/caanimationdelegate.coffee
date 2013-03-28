# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "CAAnimationDelegate"

ck.register exports.CAAnimationDelegate = class CAAnimationDelegate extends foundation.Protocol
        # Animation Progress
        animationDidStart: @optionalMethod "animationDidStart"
        animationDidStop:  @optionalMethod "animationDidStop"
