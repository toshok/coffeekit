# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextView"
exports.UITextView = class UITextView extends UIScrollView
  @register()
  @mixinProtocol UITextInput

  # Configuring the Text Attributes
  ck.instanceProperty @, "text"
  ck.instanceProperty @, "font"
  ck.instanceProperty @, "textColor"
  ck.instanceProperty @, "editable"
  ck.instanceProperty @, "dataDetectorTypes"
  ck.instanceProperty @, "textAlignment"
  hasText: objc.invokeSelector "hasText"

  # Working with the Selection
  ck.instanceProperty @, "selectedRange"
  scrollRangeToVisible: objc.invokeSelector "scrollRangeToVisible:"

  # Accessing the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UITextViewDelegate) }

  # Replacing the System Input Views
  ck.instanceProperty @, "inputView"
  ck.instanceProperty @, "inputAccessoryView"

  # UITextInputTraits Protocol
  # Managing the Keyboard Behavior
  ck.instanceProperty @, "autocapitalizationType"
  ck.instanceProperty @, "autocorrectionType"
  ck.instanceProperty @, "spellCheckingType"
  ck.instanceProperty @, "enablesReturnKeyAutomatically"
  ck.instanceProperty @, "keyboardAppearance"
  ck.instanceProperty @, "keyboardType"
  ck.instanceProperty @, "returnKeyType"
  ck.instanceProperty @, "secureTextEntry"
  # end UITextInputTraits Protocol
