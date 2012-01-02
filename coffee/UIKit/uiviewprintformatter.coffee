# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIViewPrintFormatter"
exports.UIViewPrintFormatter = class UIViewPrintFormatter extends UIPrintFormatter
  # Accessing the View
  @instanceProperty "view"

  @register()
