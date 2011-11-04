console.log "UIKeyInput"
Protocol = foundation.Protocol

class UIKeyInput extends foundation.Protocol

  # Inserting and Deleting Text
  insertText: Protocol.requiredMethod "insertText:"
  deleteBackward: Protocol.requiredMethod "deleteBackward"
  hasText: Protocol.requiredMethod "hasText"

new ck.MixinProtocolAttribute UIKeyInput, UITextInputTraits
new ck.RegisterAttribute UIKeyInput, "UIKeyInput"
exports.UIKeyinput = UIKeyInput
