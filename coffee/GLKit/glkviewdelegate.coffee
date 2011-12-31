# This file is part of coffeekit.  for licensing information, see the LICENSE file

Protocol = foundation.Protocol

exports.GLKViewDelegate = class GLKViewDelegate extends foundation.Protocol
  @register()

  # Drawing the View’s Contents
  drawInRect:  Protocol.requiredMethod("glkView:drawInRect:", {sig: "v@:@{CGRect={CGPoint=ff}{CGSize=ff}}" })
