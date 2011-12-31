# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIStoryboardPopoverSegue"
exports.UIStoryboardPopoverSegue = class UIStoryboardPopoverSegue extends UIStoryboardSegue
  @register()

  # Accessing the Segue Attributes
  ck.instanceProperty @, "popoverController"
