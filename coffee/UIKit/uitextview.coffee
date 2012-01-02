# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextView"
exports.UITextView = class UITextView extends UIScrollView
  @mixinProtocol UITextInput

  # Configuring the Text Attributes
  @instanceProperty "text"
  @instanceProperty "font"
  @instanceProperty "textColor"
  @instanceProperty "editable"
  @instanceProperty "dataDetectorTypes"
  @instanceProperty "textAlignment"
  hasText: @nativeSelector "hasText"

  # Working with the Selection
  @instanceProperty "selectedRange"
  scrollRangeToVisible: @nativeSelector "scrollRangeToVisible:"

  # Accessing the Delegate
  @autoboxProperty "delegate", UITextViewDelegate

  # Replacing the System Input Views
  @instanceProperty "inputView"
  @instanceProperty "inputAccessoryView"

  # UITextInputTraits Protocol
  # Managing the Keyboard Behavior
  @instanceProperty "autocapitalizationType"
  @instanceProperty "autocorrectionType"
  @instanceProperty "spellCheckingType"
  @instanceProperty "enablesReturnKeyAutomatically"
  @instanceProperty "keyboardAppearance"
  @instanceProperty "keyboardType"
  @instanceProperty "returnKeyType"
  @instanceProperty "secureTextEntry"
  # end UITextInputTraits Protocol

  @register()
