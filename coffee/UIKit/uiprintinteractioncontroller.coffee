# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPrintInteractionController"
exports.UIPrintInteractionController = class UIPrintInteractionController extends foundation.NSObject
  # Getting the Shared Controller Instance
  @sharedPrintController: @nativeSelector "sharedPrintController"

  # Determining Printability
  @isPrintingAvailable:   @nativeSelector "isPrintingAvailable"
  @canPrintData:          @nativeSelector "canPrintData:"
  @canPrintURL:           @nativeSelector "canPrintURL:"
  @printableUTIs:         @nativeSelector "printableUTIs"

  # Providing the Source of Printable Content
  @instanceProperty "printingItem"
  @instanceProperty "printingItems"
  @instanceProperty "printPageRenderer"
  @instanceProperty "printFormatter"

  # Presenting the Printing User Interface
  present:                  @nativeSelector "presentAnimated:completionHandler:"
  presentFromBarButtonItem: @nativeSelector "presentFromBarButtonItem:animated:completionHandler:"
  presentFromRect:          @nativeSelector "presentFromRect:inView:animated:completionHandler:"
  dismiss:                  @nativeSelector "dismissAnimated:"

  # Accessing Print-Job Information
  @instanceProperty "printInfo"
  @instanceProperty "printPaper"
  @instanceProperty "showsPageRange"

  # Assigning the Delegate
  @autoboxProperty  "delegate", UIPrintInteractionControllerDelegate

  @register()

