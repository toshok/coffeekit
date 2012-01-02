# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPopoverControllerDelegate"

exports.UIPopoverControllerDelegate = class UIPopoverControllerDelegate extends foundation.Protocol

  # Managing the Popover’s Dismissal
  shouldDismissPopover: @optionalMethod "popoverControllerShouldDismissPopover:"
  didDismissPopover:    @optionalMethod "popoverControllerDidDismissPopover:"

  @register()