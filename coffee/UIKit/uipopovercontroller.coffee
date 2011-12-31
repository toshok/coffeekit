# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPopoverController"
exports.UIPopoverController = class UIPopoverController extends foundation.NSObject
  @register()

  # Initializing the Popover
  initWithContentViewController: objc.invokeSelector "initWithContentViewController:"

  # Configuring the Popover Attributes
  ck.instanceProperty @, "contentViewController", { set: (v) -> @setContentViewController v, false }
  setContentViewController: objc.invokeSelector "setContentViewController:animated:"
  ck.instanceProperty @, "popoverContentSize", { set: (v) -> @setPopoverContentSize v, false }
  setPopoverContentSize: objc.invokeSelector "setPopoverContentSize:animated:"
  ck.instanceProperty @, "passthroughViews"
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIPopoverControllerDelegate) }

  # Getting the Popover Attributes
  ck.instanceProperty @, "popoverVisible"
  ck.instanceProperty @, "popoverArrowDirection"

  # Presenting and Dismissing the Popover
  presentPopoverFromRect: objc.invokeSelector "presentPopoverFromRect:inView:permittedArrowDirections:animated:"
  presentPopoverFromBarButtonItem: objc.invokeSelector "presentPopoverFromBarButtonItem:permittedArrowDirections:animated:"
  dismissPopover: objc.invokeSelector "dismissPopoverAnimated:"

  # Customizing the Popover Appearance
  ck.instanceProperty @, "popoverLayoutMargins"
  ck.instanceProperty @, "popoverBackgroundViewClass"
