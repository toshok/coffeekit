# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSController = class NSController extends foundation.NSObject
  # Managing Editing
  objectDidBeginEditing: @nativeSelector "objectDidBeginEditing:"
  objectDidEndEditing: @nativeSelector "objectDidEndEditing:"
  commitEditing: @nativeSelector "commitEditing"
  commitEditingWithDelegate: @nativeSelector "commitEditingWithDelegate:didCommitSelector:contextInfo:"
  discardEditing: @nativeSelector "discardEditing"
  isEditing: @nativeSelector "isEditing"

  @register()
