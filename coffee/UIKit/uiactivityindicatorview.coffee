# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIActivityIndicatorView"
class UIActivityIndicatorView extends UIView

  # Initializing an Activity Indicator
  initWithActivityIndicatorStyle: objc.invokeSelector "initWithActivityIndicatorStyle:"

  # Managing an Activity Indicator
  startAnimating: objc.invokeSelector "startAnimating"
  stopAnimating: objc.invokeSelector "stopAnimating"
  isAnimating: objc.invokeSelector "isAnimating"
  ck.addProperty @::, "hidesWhenStopped"

  # Configuring the Activity Indicator Appearance
  ck.addProperty @::, "activityIndicatorViewStyle"
  ck.addProperty @::, "color"

new ck.RegisterAttribute UIActivityIndicatorView, "UIActivityIndicatorView"
exports.UIActivityIndicatorView = UIActivityIndicatorView
