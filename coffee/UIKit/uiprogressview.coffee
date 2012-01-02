# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIProgressView"
exports.UIProgressView = class UIProgressView extends UIView
  # Initializing the UIProgressView Object
  initWithProgressViewStyle: @nativeSelector "initWithProgressViewStyle:"

  # Managing the Progress Bar
  @instanceProperty "progress", { set: (v) -> @setProgress v, false }
  setProgress: @nativeSelector "setProgress:animated:"

  # Configuring the Progress Bar
  @instanceProperty "progressViewStyle"
  @instanceProperty "progressTintColor"
  @instanceProperty "progressImage"
  @instanceProperty "trackTintColor"
  @instanceProperty "trackImage"

  @register()
