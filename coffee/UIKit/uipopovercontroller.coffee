# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIPopoverController"
exports.UIPopoverController = class UIPopoverController extends foundation.NSObject
  # Initializing the Popover
  initWithContentViewController: @nativeSelector "initWithContentViewController:"

  # Configuring the Popover Attributes
  setContentViewController: @nativeSelector "setContentViewController:animated:"
  setPopoverContentSize:    @nativeSelector "setPopoverContentSize:animated:"
  @instanceProperty "contentViewController", { set: (v) -> @setContentViewController v, false }
  @instanceProperty "popoverContentSize", { set: (v) -> @setPopoverContentSize v, false }
  @instanceProperty "passthroughViews"
  @autoboxProperty  "delegate", UIPopoverControllerDelegate

  # Getting the Popover Attributes
  @instanceProperty "popoverVisible"
  @instanceProperty "popoverArrowDirection"

  # Presenting and Dismissing the Popover
  presentPopoverFromRect:          @nativeSelector "presentPopoverFromRect:inView:permittedArrowDirections:animated:"
  presentPopoverFromBarButtonItem: @nativeSelector "presentPopoverFromBarButtonItem:permittedArrowDirections:animated:"
  dismissPopover:                  @nativeSelector "dismissPopoverAnimated:"

  # Customizing the Popover Appearance
  @instanceProperty "popoverLayoutMargins"
  @instanceProperty "popoverBackgroundViewClass"

  @register()
