# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIImagePickerControllerDelegate"

exports.UIImagePickerControllerDelegate = class UIImagePickerControllerDelegate extends foundation.Protocol

  # Closing the Picker
  didFinishPickingMediaWithInfo: @optionalMethod "imagePickerController:didFinishPickingMediaWithInfo:"
  didCancel:                     @optionalMethod "imagePickerControllerDidCancel:"
  didFinishPickingImage:         @optionalMethod "imagePickerController:didFinishPickingImage:editingInfo:" # Deprecated in iOS 3.0

  @register()