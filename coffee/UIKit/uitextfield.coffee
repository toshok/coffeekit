# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextField"
exports.UITextField = class UITextField extends UIControl
  # Accessing the Text Attributes
  @instanceProperty "text"
  @instanceProperty "placeholder"
  @instanceProperty "font"
  @instanceProperty "textColor"
  @instanceProperty "textAlignment"

  # Sizing the Text Field’s Text
  @instanceProperty "adjustsFontSizeToFitWidth"
  @instanceProperty "minimumFontSize"

  # Managing the Editing Behavior
  @instanceProperty "editing"
  @instanceProperty "clearsOnBeginEditing"

  # Setting the View’s Background Appearance
  @instanceProperty "borderStyle"
  @instanceProperty "background"
  @instanceProperty "disabledBackground"

  # Managing Overlay Views
  @instanceProperty "clearButtonMode"
  @instanceProperty "leftView"
  @instanceProperty "leftViewMode"
  @instanceProperty "rightView"
  @instanceProperty "rightViewMode"

  # Accessing the Delegate
  @autoboxProperty "delegate", UITextFieldDelegate

  # Drawing and Positioning Overrides
  textRect:              @nativeSelector "textRectForBounds:"
  drawTextInRect:        @nativeSelector "drawTextInRect:"
  placeholderRect:       @nativeSelector "placeholderRectForBounds:"
  drawPlaceholderInRect: @nativeSelector "drawPlaceholderInRect:"
  borderRect:            @nativeSelector "borderRectForBounds:"
  editingRect:           @nativeSelector "editingRectForBounds:"
  clearButtonRect:       @nativeSelector "clearButtonRectForBounds:"
  leftViewRect:          @nativeSelector "leftViewRectForBounds:"
  rightViewRect:         @nativeSelector "rightViewRectForBounds:"

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
