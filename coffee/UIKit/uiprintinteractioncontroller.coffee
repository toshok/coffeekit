# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPrintInteractionController"
exports.UIPrintInteractionController = class UIPrintInteractionController extends foundation.NSObject
  @register()

  # Getting the Shared Controller Instance
  @sharedPrintController: objc.invokeSelector "sharedPrintController"

  # Determining Printability
  @isPrintingAvailable: objc.invokeSelector "isPrintingAvailable"
  @canPrintData: objc.invokeSelector "canPrintData:"
  @canPrintURL: objc.invokeSelector "canPrintURL:"
  @printableUTIs: objc.invokeSelector "printableUTIs"

  # Providing the Source of Printable Content
  ck.instanceProperty @, "printingItem"
  ck.instanceProperty @, "printingItems"
  ck.instanceProperty @, "printPageRenderer"
  ck.instanceProperty @, "printFormatter"

  # Presenting the Printing User Interface
  present: objc.invokeSelector "presentAnimated:completionHandler:"
  presentFromBarButtonItem: objc.invokeSelector "presentFromBarButtonItem:animated:completionHandler:"
  presentFromRect: objc.invokeSelector "presentFromRect:inView:animated:completionHandler:"
  dismiss: objc.invokeSelector "dismissAnimated:"

  # Accessing Print-Job Information
  ck.instanceProperty @, "printInfo"
  ck.instanceProperty @, "printPaper"
  ck.instanceProperty @, "showsPageRange"

  # Assigning the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIPrintInteractionControllerDelegate) }
