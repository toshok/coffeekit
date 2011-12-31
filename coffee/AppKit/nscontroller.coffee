# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSController = class NSController extends foundation.NSObject
  @register()

  # Managing Editing
  objectDidBeginEditing: objc.invokeSelector "objectDidBeginEditing:"
  objectDidEndEditing: objc.invokeSelector "objectDidEndEditing:"
  commitEditing: objc.invokeSelector "commitEditing"
  commitEditingWithDelegate: objc.invokeSelector "commitEditingWithDelegate:didCommitSelector:contextInfo:"
  discardEditing: objc.invokeSelector "discardEditing"
  isEditing: objc.invokeSelector "isEditing"
