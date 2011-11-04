#console.log "UIScreenMode"
class UIScreenMode extends foundation.NSObject

  # Accessing the Screen Mode Attributes
  ck.addProperty @::, "size"
  ck.addProperty @::, "pixelAspectRatio"

new ck.RegisterAttribute UIScreenMode, "UIScreenMode"
exports.UIScreenMode = UIScreenMode
