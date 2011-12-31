# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIScreenMode"
exports.UIScreenMode = class UIScreenMode extends foundation.NSObject
  @register()

  # Accessing the Screen Mode Attributes
  ck.instanceProperty @, "size"
  ck.instanceProperty @, "pixelAspectRatio"
