#console.log "UITextField"
class UITextField extends UIControl

  # Accessing the Text Attributes
  ck.addProperty @::, "text"
  ck.addProperty @::, "placeholder"
  ck.addProperty @::, "font"
  ck.addProperty @::, "textColor"
  ck.addProperty @::, "textAlignment"

  # Sizing the Text Field’s Text
  ck.addProperty @::, "adjustsFontSizeToFitWidth"
  ck.addProperty @::, "minimumFontSize"

  # Managing the Editing Behavior
  ck.addProperty @::, "editing"
  ck.addProperty @::, "clearsOnBeginEditing"

  # Setting the View’s Background Appearance
  ck.addProperty @::, "borderStyle"
  ck.addProperty @::, "background"
  ck.addProperty @::, "disabledBackground"

  # Managing Overlay Views
  ck.addProperty @::, "clearButtonMode"
  ck.addProperty @::, "leftView"
  ck.addProperty @::, "leftViewMode"
  ck.addProperty @::, "rightView"
  ck.addProperty @::, "rightViewMode"

  # Accessing the Delegate
  ck.addProperty @::, "delegate"

  # Drawing and Positioning Overrides
  textRect: objc.invokeSelector ("textRectForBounds:")
  drawTextInRect: objc.invokeSelector ("drawTextInRect:")
  placeholderRect: objc.invokeSelector ("placeholderRectForBounds:")
  drawPlaceholderInRect: objc.invokeSelector ("drawPlaceholderInRect:")
  borderRect: objc.invokeSelector ("borderRectForBounds:")
  editingRect: objc.invokeSelector ("editingRectForBounds:")
  clearButtonRect: objc.invokeSelector ("clearButtonRectForBounds:")
  leftViewRect: objc.invokeSelector ("leftViewRectForBounds:")
  rightViewRect: objc.invokeSelector ("rightViewRectForBounds:")

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

new ck.RegisterAttribute UITextField, "UITextField"
exports.UITextField = UITextField
