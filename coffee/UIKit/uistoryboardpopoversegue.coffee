# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIStoryboardPopoverSegue"
class UIStoryboardPopoverSegue extends UIStoryboardSegue

  # Accessing the Segue Attributes
  ck.addProperty @::, "popoverController"

new ck.RegisterAttribute UIStoryboardPopoverSegue, "UIStoryboardPopoverSegue"
exports.UIStoryboardPopoverSegue = UIStoryboardPopoverSegue
