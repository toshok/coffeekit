class NSController extends foundation.NSObject

  # Managing Editing
  objectDidBeginEditing: objc.invokeSelector "objectDidBeginEditing:"
  objectDidEndEditing: objc.invokeSelector "objectDidEndEditing:"
  commitEditing: objc.invokeSelector "commitEditing"
  commitEditingWithDelegate: objc.invokeSelector "commitEditingWithDelegate:didCommitSelector:contextInfo:"
  discardEditing: objc.invokeSelector "discardEditing"
  isEditing: objc.invokeSelector "isEditing"

new ck.RegisterAttribute NSController, "NSController"
exports.NSController = NSController
