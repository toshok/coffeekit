# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIScreenMode"
class UIScreenMode extends foundation.NSObject

  # Accessing the Screen Mode Attributes
  ck.addProperty @::, "size"
  ck.addProperty @::, "pixelAspectRatio"

new ck.RegisterAttribute UIScreenMode, "UIScreenMode"
exports.UIScreenMode = UIScreenMode
