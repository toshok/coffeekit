# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPopoverBackgroundView"
exports.UIPopoverBackgroundView = class UIPopoverBackgroundView extends UIView
  @register()

  # Returning the Content View Insets
  @contentViewInsets: objc.invokeSelector "contentViewInsets"

  # Accessing the Arrow Metrics
  ck.instanceProperty @, "arrowOffset"
  ck.instanceProperty @, "arrowDirection"
  @arrowHeight: objc.invokeSelector "arrowHeight"
  @arrowBase: objc.invokeSelector "arrowBase"
