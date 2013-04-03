# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIKeyInput"

exports.UIKeyInput = class UIKeyInput extends foundation.Protocol
  @mixinProtocol UITextInputTraits

  # Inserting and Deleting Text
  insertText:     @requiredMethod "insertText:"
  deleteBackward: @requiredMethod "deleteBackward"
  hasText:        @requiredMethod "hasText"

  @register()
