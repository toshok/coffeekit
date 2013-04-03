# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIDocumentInteractionController"
exports.UIDocumentInteractionController = class UIDocumentInteractionController extends foundation.NSObject
  # Creating the Document Interaction Controller
  @interactionControllerWithURL:       @nativeSelector "interactionControllerWithURL:"

  # Presenting and Dismissing a Document Preview
  presentPreview:                      @nativeSelector "presentPreviewAnimated:"
  dismissPreview:                      @nativeSelector "dismissPreviewAnimated:"

  # Presenting and Dismissing Menus
  presentOptionsMenuFromRect:          @nativeSelector "presentOptionsMenuFromRect:inView:animated:"
  presentOptionsMenuFromBarButtonItem: @nativeSelector "presentOptionsMenuFromBarButtonItem:animated:"
  presentOpenInMenuFromRect:           @nativeSelector "presentOpenInMenuFromRect:inView:animated:"
  presentOpenInMenuFromBarButtonItem:  @nativeSelector "presentOpenInMenuFromBarButtonItem:animated:"
  dismissMenu:                         @nativeSelector "dismissMenuAnimated:"

  # Accessing the Target Document’s Attributes
  @instanceProperty "URL"
  @instanceProperty "UTI"
  @instanceProperty "name"
  @instanceProperty "icons"
  @instanceProperty "annotation"

  # Accessing the Controller Attributes
  @instanceProperty "gestureRecognizers"
  @autoboxProperty  "delegate", UIDocumentInteractionControllerDelegate

  @register()
