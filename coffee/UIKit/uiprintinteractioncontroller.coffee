#console.log "UIPrintInteractionController"
class UIPrintInteractionController extends foundation.NSObject

  # Getting the Shared Controller Instance
  @sharedPrintController: objc.invokeSelector "sharedPrintController"

  # Determining Printability
  @isPrintingAvailable: objc.invokeSelector "isPrintingAvailable"
  @canPrintData: objc.invokeSelector "canPrintData:"
  @canPrintURL: objc.invokeSelector "canPrintURL:"
  @printableUTIs: objc.invokeSelector "printableUTIs"

  # Providing the Source of Printable Content
  ck.addProperty @::, "printingItem"
  ck.addProperty @::, "printingItems"
  ck.addProperty @::, "printPageRenderer"
  ck.addProperty @::, "printFormatter"

  # Presenting the Printing User Interface
  present: objc.invokeSelector "presentAnimated:completionHandler:"
  presentFromBarButtonItem: objc.invokeSelector "presentFromBarButtonItem:animated:completionHandler:"
  presentFromRect: objc.invokeSelector "presentFromRect:inView:animated:completionHandler:"
  dismiss: objc.invokeSelector "dismissAnimated:"

  # Accessing Print-Job Information
  ck.addProperty @::, "printInfo"
  ck.addProperty @::, "printPaper"
  ck.addProperty @::, "showsPageRange"

  # Assigning the Delegate
  ck.addProperty @::, "delegate"

new ck.RegisterAttribute UIPrintInteractionController, "UIPrintInteractionController"
exports.UIPrintInteractionController = UIPrintInteractionController
