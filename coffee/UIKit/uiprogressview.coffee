# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIProgressView"
exports.UIProgressView = class UIProgressView extends UIView
  @register()

  # Initializing the UIProgressView Object
  initWithProgressViewStyle: objc.invokeSelector "initWithProgressViewStyle:"

  # Managing the Progress Bar
  ck.instanceProperty @, "progress", { set: (v) -> @setProgress v, false }
  setProgress: objc.invokeSelector "setProgress:animated:"

  # Configuring the Progress Bar
  ck.instanceProperty @, "progressViewStyle"
  ck.instanceProperty @, "progressTintColor"
  ck.instanceProperty @, "progressImage"
  ck.instanceProperty @, "trackTintColor"
  ck.instanceProperty @, "trackImage"
