# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIDocumentInteractionController"
exports.UIDocumentInteractionController = class UIDocumentInteractionController extends foundation.NSObject
  @register()

  # Creating the Document Interaction Controller
  @interactionControllerWithURL: objc.invokeSelector "interactionControllerWithURL:"

  # Presenting and Dismissing a Document Preview
  presentPreview: objc.invokeSelector "presentPreviewAnimated:"
  dismissPreview: objc.invokeSelector "dismissPreviewAnimated:"

  # Presenting and Dismissing Menus
  presentOptionsMenuFromRect: objc.invokeSelector "presentOptionsMenuFromRect:inView:animated:"
  presentOptionsMenuFromBarButtonItem: objc.invokeSelector "presentOptionsMenuFromBarButtonItem:animated:"
  presentOpenInMenuFromRect: objc.invokeSelector "presentOpenInMenuFromRect:inView:animated:"
  presentOpenInMenuFromBarButtonItem: objc.invokeSelector "presentOpenInMenuFromBarButtonItem:animated:"
  dismissMenu: objc.invokeSelector "dismissMenuAnimated:"

  # Accessing the Target Document’s Attributes
  ck.instanceProperty @, "URL"
  ck.instanceProperty @, "UTI"
  ck.instanceProperty @, "name"
  ck.instanceProperty @, "icons"
  ck.instanceProperty @, "annotation"

  # Accessing the Controller Attributes
  ck.instanceProperty @, "gestureRecognizers"
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIDocumentInteractionControllerDelegate) }
