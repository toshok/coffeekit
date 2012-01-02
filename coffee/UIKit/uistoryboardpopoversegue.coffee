# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIStoryboardPopoverSegue"
exports.UIStoryboardPopoverSegue = class UIStoryboardPopoverSegue extends UIStoryboardSegue
  # Accessing the Segue Attributes
  @instanceProperty "popoverController"

  @register()
