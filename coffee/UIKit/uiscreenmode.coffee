# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIScreenMode"
exports.UIScreenMode = class UIScreenMode extends foundation.NSObject
  # Accessing the Screen Mode Attributes
  @instanceProperty "size"
  @instanceProperty "pixelAspectRatio"

  @register()
