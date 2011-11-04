# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextInputTraits"
Protocol = foundation.Protocol

class UITextInputTraits extends foundation.Protocol

  # Managing the Keyboard Behavior
  autocapitalizationType:        Protocol.requiredProperty "autocapitalizationType"
  autocorrectionType:            Protocol.requiredProperty "autocorrectionType"
  spellCheckingType:             Protocol.requiredProperty "spellCheckingType"
  enablesReturnKeyAutomatically: Protocol.requiredProperty "enablesReturnKeyAutomatically"
  keyboardAppearance:            Protocol.requiredProperty "keyboardAppearance"
  keyboardType:                  Protocol.requiredProperty "keyboardType"
  returnKeyType:                 Protocol.requiredProperty "returnKeyType"
  secureTextEntry:               Protocol.requiredProperty "secureTextEntry"

# we don't want NSObjectProtocol, I'm pretty sure..  too much underlying stuff we don't want to expose.
# so let's leave it at that.
# new ck.MixinProtocolAttribute UITextInputTraits, foundation.NSObjectProtocol

new ck.RegisterAttribute UITextInputTraits, "UITextInputTraits"
exports.UITextinputTraits = UITextInputTraits

