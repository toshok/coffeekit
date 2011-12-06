# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIDocumentInteractionController"
class UIDocumentInteractionController extends foundation.NSObject

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
  ck.addProperty @::, "URL"
  ck.addProperty @::, "UTI"
  ck.addProperty @::, "name"
  ck.addProperty @::, "icons"
  ck.addProperty @::, "annotation"

  # Accessing the Controller Attributes
  ck.addProperty @::, "gestureRecognizers"
  ck.addProperty @::, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIDocumentInteractionControllerDelegate) }

new ck.RegisterAttribute UIDocumentInteractionController, "UIDocumentInteractionController"
exports.UIDocumentInteractionController = UIDocumentInteractionController
