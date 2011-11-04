#console.log "UITextView"
class UITextView extends UIScrollView

  # Configuring the Text Attributes
  ck.addProperty @::, "text"
  ck.addProperty @::, "font"
  ck.addProperty @::, "textColor"
  ck.addProperty @::, "editable"
  ck.addProperty @::, "dataDetectorTypes"
  ck.addProperty @::, "textAlignment"
  hasText: objc.invokeSelector ("hasText")

  # Working with the Selection
  ck.addProperty @::, "selectedRange"
  scrollRangeToVisible: objc.invokeSelector ("scrollRangeToVisible:")

  # Accessing the Delegate
  ck.addProperty @::, "delegate"

  # Replacing the System Input Views
  ck.addProperty @::, "inputView"
  ck.addProperty @::, "inputAccessoryView"

  # UITextInputTraits Protocol
  # Managing the Keyboard Behavior
  ck.addProperty @::, "autocapitalizationType"
  ck.addProperty @::, "autocorrectionType"
  ck.addProperty @::, "spellCheckingType"
  ck.addProperty @::, "enablesReturnKeyAutomatically"
  ck.addProperty @::, "keyboardAppearance"
  ck.addProperty @::, "keyboardType"
  ck.addProperty @::, "returnKeyType"
  ck.addProperty @::, "secureTextEntry"
  # end UITextInputTraits Protocol

new ck.MixinProtocolAttribute UITextView, UITextInput
new ck.RegisterAttribute UITextView, "UITextView"
exports.UITextView = UITextView
