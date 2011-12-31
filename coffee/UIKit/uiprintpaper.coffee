# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPrintPaper"
exports.UIPrintPaper = class UIPrintPaper extends foundation.NSObject
  @register()

  # Getting the Paper Size and the Printing Area
  ck.instanceProperty @, "paperSize"
  ck.instanceProperty @, "printableRect"

  # Obtaining the Best Paper Size for Printing
  @bestPaperForPageSize: objc.invokeSelector "bestPaperForPageSize:withPapersFromArray:"
