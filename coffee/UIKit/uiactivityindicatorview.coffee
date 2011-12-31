# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIActivityIndicatorView"
exports.UIActivityIndicatorView = class UIActivityIndicatorView extends UIView
  @register()

  # Initializing an Activity Indicator
  initWithActivityIndicatorStyle: objc.invokeSelector "initWithActivityIndicatorStyle:"

  # Managing an Activity Indicator
  startAnimating: objc.invokeSelector "startAnimating"
  stopAnimating: objc.invokeSelector "stopAnimating"
  isAnimating: objc.invokeSelector "isAnimating"
  ck.instanceProperty @, "hidesWhenStopped"

  # Configuring the Activity Indicator Appearance
  ck.instanceProperty @, "activityIndicatorViewStyle"
  ck.instanceProperty @, "color"
