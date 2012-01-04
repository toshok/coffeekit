# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKViewDelegate = class GLKViewDelegate extends foundation.Protocol
  # Drawing the View’s Contents
  drawInRect:  @requiredMethod("glkView:drawInRect:", {sig: "v@:@{CGRect={CGPoint=ff}{CGSize=ff}}" })

  @register()
