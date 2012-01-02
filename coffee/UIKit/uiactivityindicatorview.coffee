# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIActivityIndicatorView"
exports.UIActivityIndicatorView = class UIActivityIndicatorView extends UIView
  # Initializing an Activity Indicator
  initWithActivityIndicatorStyle: @nativeSelector "initWithActivityIndicatorStyle:"

  # Managing an Activity Indicator
  startAnimating:   @nativeSelector "startAnimating"
  stopAnimating:    @nativeSelector "stopAnimating"
  isAnimating:      @nativeSelector "isAnimating"
  @instanceProperty "hidesWhenStopped"

  # Configuring the Activity Indicator Appearance
  @instanceProperty "activityIndicatorViewStyle"
  @instanceProperty "color"

  @register()
