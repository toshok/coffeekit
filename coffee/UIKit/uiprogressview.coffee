#console.log "UIProgressView"
class UIProgressView extends UIView

  # Initializing the UIProgressView Object
  initWithProgressViewStyle: objc.invokeSelector ("initWithProgressViewStyle:")

  # Managing the Progress Bar
  ck.addProperty @::, "progress", { set: (v) -> setProgress v, false }
  setProgress: objc.invokeSelector ("setProgress:animated:")

  # Configuring the Progress Bar
  ck.addProperty @::, "progressViewStyle"
  ck.addProperty @::, "progressTintColor"
  ck.addProperty @::, "progressImage"
  ck.addProperty @::, "trackTintColor"
  ck.addProperty @::, "trackImage"

new ck.RegisterAttribute UIProgressView, "UIProgressView"
exports.UIProgressView = UIProgressView
