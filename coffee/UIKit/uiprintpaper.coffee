#console.log "UIPrintPaper"
class UIPrintPaper extends foundation.NSObject

  # Getting the Paper Size and the Printing Area
  ck.addProperty @::, "paperSize"
  ck.addProperty @::, "printableRect"

  # Obtaining the Best Paper Size for Printing
  @bestPaperForPageSize: objc.invokeSelector "bestPaperForPageSize:withPapersFromArray:"

new ck.RegisterAttribute UIPrintPaper, "UIPrintPaper"
exports.UIPrintPaper = UIPrintPaper
