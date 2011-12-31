# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIViewPrintFormatter"
exports.UIViewPrintFormatter = class UIViewPrintFormatter extends UIPrintFormatter
  @register()

  # Accessing the View
  ck.instanceProperty @, "view"
