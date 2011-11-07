# This file is part of coffeekit.  for licensing information, see the LICENSE file

Protocol = foundation.Protocol

class GLKViewDelegate extends foundation.Protocol

  # Drawing the View’s Contents
  drawInRect:  Protocol.requiredMethod "glkView:drawInRect:"

new ck.RegisterAttribute GLKViewDelegate, "GLKViewDelegate"
exports.GLKViewDelegate = GLKViewDelegate
