# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPopoverBackgroundView"
exports.UIPopoverBackgroundView = class UIPopoverBackgroundView extends UIView
  # Returning the Content View Insets
  @contentViewInsets: @nativeSelector "contentViewInsets"

  # Accessing the Arrow Metrics
  @instanceProperty "arrowOffset"
  @instanceProperty "arrowDirection"

  @arrowHeight: @nativeSelector "arrowHeight"
  @arrowBase:   @nativeSelector "arrowBase"

  @register()
