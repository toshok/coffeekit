# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIKeyInput"
Protocol = foundation.Protocol

exports.UIKeyInput = class UIKeyInput extends foundation.Protocol
  @register()
  @mixinProtocol UITextInputTraits

  # Inserting and Deleting Text
  insertText: Protocol.requiredMethod "insertText:"
  deleteBackward: Protocol.requiredMethod "deleteBackward"
  hasText: Protocol.requiredMethod "hasText"
