# This file is part of coffeekit.  for licensing information, see the LICENSE file

Protocol = foundation.Protocol

class GLKViewDelegate extends foundation.Protocol

  # Drawing the View’s Contents
  drawInRect:  Protocol.requiredMethod("glkView:drawInRect:", {sig: "v@:@{CGRect={CGPoint=ff}{CGSize=ff}}" })

new ck.RegisterAttribute GLKViewDelegate, "GLKViewDelegate"
exports.GLKViewDelegate = GLKViewDelegate
