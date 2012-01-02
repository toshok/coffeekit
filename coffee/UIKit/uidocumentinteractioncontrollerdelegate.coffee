# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIDocumentInteractionControllerDelegate"

class UIDocumentInteractionControllerDelegate extends foundation.Protocol

  # Configuring the Parent View Controller
  viewControllerForPreview: @optionalMethod "documentInteractionControllerViewControllerForPreview:"
  viewForPreview:           @optionalMethod "documentInteractionControllerViewForPreview:"
  rectForPreview:           @optionalMethod "documentInteractionControllerRectForPreview:"

  # Presenting the User Interface
  willBeginPreview:         @optionalMethod "documentInteractionControllerWillBeginPreview:"
  didEndPreview:            @optionalMethod "documentInteractionControllerDidEndPreview:"
  willPresentOptionsMenu:   @optionalMethod "documentInteractionControllerWillPresentOptionsMenu:"
  didDismissOptionsMenu:    @optionalMethod "documentInteractionControllerDidDismissOptionsMenu:"
  willPresentOpenInMenu:    @optionalMethod "documentInteractionControllerWillPresentOpenInMenu:"
  didDismissOpenInMenu:     @optionalMethod "documentInteractionControllerDidDismissOpenInMenu:"

  # Opening Files
  willBeginSendingToApplication: @optionalMethod "documentInteractionController:willBeginSendingToApplication:"
  didEndSendingToApplication:    @optionalMethod "documentInteractionController:didEndSendingToApplication:"

  # Managing Actions
  canPerformAction:         @optionalMethod "documentInteractionController:canPerformAction:"
  performAction:            @optionalMethod "documentInteractionController:performAction:"

  @register()