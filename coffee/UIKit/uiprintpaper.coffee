# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPrintPaper"
exports.UIPrintPaper = class UIPrintPaper extends foundation.NSObject
  # Getting the Paper Size and the Printing Area
  @instanceProperty "paperSize"
  @instanceProperty "printableRect"

  # Obtaining the Best Paper Size for Printing
  @bestPaperForPageSize: @nativeSelector "bestPaperForPageSize:withPapersFromArray:"

  @register()
