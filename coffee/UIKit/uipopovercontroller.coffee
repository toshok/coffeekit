#console.log "UIPopoverController"
class UIPopoverController extends foundation.NSObject

  # Initializing the Popover
  initWithContentViewController: objc.invokeSelector "initWithContentViewController:"

  # Configuring the Popover Attributes
  ck.addProperty @::, "contentViewController", { set: (v) -> setContentViewController v, false }
  setContentViewController: objc.invokeSelector "setContentViewController:animated:"
  ck.addProperty @::, "popoverContentSize", { set: (v) -> setPopoverContentSize v, false }
  setPopoverContentSize: objc.invokeSelector "setPopoverContentSize:animated:"
  ck.addProperty @::, "passthroughViews"
  ck.addProperty @::, "delegate"

  # Getting the Popover Attributes
  ck.addProperty @::, "popoverVisible"
  ck.addProperty @::, "popoverArrowDirection"

  # Presenting and Dismissing the Popover
  presentPopoverFromRect: objc.invokeSelector "presentPopoverFromRect:inView:permittedArrowDirections:animated:"
  presentPopoverFromBarButtonItem: objc.invokeSelector "presentPopoverFromBarButtonItem:permittedArrowDirections:animated:"
  dismissPopover: objc.invokeSelector "dismissPopoverAnimated:"

  # Customizing the Popover Appearance
  ck.addProperty @::, "popoverLayoutMargins"
  ck.addProperty @::, "popoverBackgroundViewClass"

new ck.RegisterAttribute UIPopoverController, "UIPopoverController"
exports.UIPopoverController = UIPopoverController
