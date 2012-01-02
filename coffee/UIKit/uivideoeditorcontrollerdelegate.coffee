# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIVideoEditorControllerDelegate"

exports.UIVideoEditorControllerDelegate = class UIVideoEditorControllerDelegate extends foundation.Protocol

  # Closing the Video Editor
  didSaveEditedVideoToPath: @optionalMethod "videoEditorController:didSaveEditedVideoToPath:"
  didCancel:                @optionalMethod "videoEditorControllerDidCancel:"

  # Handling Errors
  didFailWithError:         @optionalMethod "videoEditorController:didFailWithError:"

  @register()