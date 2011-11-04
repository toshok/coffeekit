# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPopoverBackgroundView"
class UIPopoverBackgroundView extends UIView

  # Returning the Content View Insets
  @contentViewInsets: objc.invokeSelector "contentViewInsets"

  # Accessing the Arrow Metrics
  ck.addProperty @::, "arrowOffset"
  ck.addProperty @::, "arrowDirection"
  @arrowHeight: objc.invokeSelector "arrowHeight"
  @arrowBase: objc.invokeSelector "arrowBase"

new ck.RegisterAttribute UIPopoverBackgroundView, "UIPopoverBackgroundView"
exports.UIPopoverBackgroundView = UIPopoverBackgroundView
