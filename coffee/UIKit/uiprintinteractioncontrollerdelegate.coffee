# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIPrintInteractionControllerDelegte"

exports.UIPrintInteractionControllerDelegate = class UIPrintInteractionControllerDelegate extends foundation.Protocol

  # Returning a Parent View Controller
  parentViewController: @optionalMethod "printInteractionControllerParentViewController:"

  # Choosing a Paper Size for the Print Job
  choosePaper:          @optionalMethod "printInteractionController:choosePaper:"

  # Responding to the Presentation and Dismissal of the Printing Interface
  willPresentPrinterOptions: @optionalMethod "printInteractionControllerWillPresentPrinterOptions:"
  didPresentPrinterOptions:  @optionalMethod "printInteractionControllerDidPresentPrinterOptions:"
  willDismissPrinterOptions: @optionalMethod "printInteractionControllerWillDismissPrinterOptions:"
  didDismissPrinterOptions:  @optionalMethod "printInteractionControllerDidDismissPrinterOptions:"

  # Responding to the Start and End of a Print Job
  willStartJob: @optionalMethod "printInteractionControllerWillStartJob:"
  didFinishJob: @optionalMethod "printInteractionControllerDidFinishJob:"

  @register()