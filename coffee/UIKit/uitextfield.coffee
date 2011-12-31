# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextField"
exports.UITextField = class UITextField extends UIControl
  @register()

  # Accessing the Text Attributes
  ck.instanceProperty @, "text"
  ck.instanceProperty @, "placeholder"
  ck.instanceProperty @, "font"
  ck.instanceProperty @, "textColor"
  ck.instanceProperty @, "textAlignment"

  # Sizing the Text Field’s Text
  ck.instanceProperty @, "adjustsFontSizeToFitWidth"
  ck.instanceProperty @, "minimumFontSize"

  # Managing the Editing Behavior
  ck.instanceProperty @, "editing"
  ck.instanceProperty @, "clearsOnBeginEditing"

  # Setting the View’s Background Appearance
  ck.instanceProperty @, "borderStyle"
  ck.instanceProperty @, "background"
  ck.instanceProperty @, "disabledBackground"

  # Managing Overlay Views
  ck.instanceProperty @, "clearButtonMode"
  ck.instanceProperty @, "leftView"
  ck.instanceProperty @, "leftViewMode"
  ck.instanceProperty @, "rightView"
  ck.instanceProperty @, "rightViewMode"

  # Accessing the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UITextFieldDelegate) }

  # Drawing and Positioning Overrides
  textRect: objc.invokeSelector "textRectForBounds:"
  drawTextInRect: objc.invokeSelector "drawTextInRect:"
  placeholderRect: objc.invokeSelector "placeholderRectForBounds:"
  drawPlaceholderInRect: objc.invokeSelector "drawPlaceholderInRect:"
  borderRect: objc.invokeSelector "borderRectForBounds:"
  editingRect: objc.invokeSelector "editingRectForBounds:"
  clearButtonRect: objc.invokeSelector "clearButtonRectForBounds:"
  leftViewRect: objc.invokeSelector "leftViewRectForBounds:"
  rightViewRect: objc.invokeSelector "rightViewRectForBounds:"

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
