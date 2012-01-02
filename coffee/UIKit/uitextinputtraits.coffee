# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextInputTraits"

exports.UITextInputTraits = class UITextInputTraits extends foundation.Protocol
  # we don't want NSObjectProtocol, I'm pretty sure..  too much underlying stuff we don't want to expose.
  # so let's leave it at that.
  # @mixinProtocol foundation.NSObjectProtocol

  # Managing the Keyboard Behavior
  autocapitalizationType:        @requiredProperty "autocapitalizationType"
  autocorrectionType:            @requiredProperty "autocorrectionType"
  spellCheckingType:             @requiredProperty "spellCheckingType"
  enablesReturnKeyAutomatically: @requiredProperty "enablesReturnKeyAutomatically"
  keyboardAppearance:            @requiredProperty "keyboardAppearance"
  keyboardType:                  @requiredProperty "keyboardType"
  returnKeyType:                 @requiredProperty "returnKeyType"
  secureTextEntry:               @requiredProperty "secureTextEntry"

  @register()
