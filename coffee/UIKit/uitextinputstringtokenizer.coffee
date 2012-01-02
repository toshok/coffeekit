# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextInputStringTokenizer"
exports.UITextInputStringTokenizer = class UITextInputStringTokenizer extends foundation.NSObject
  # Initializing a Tokenizer
  initWithTextInput: @nativeSelector "initWithTextInput:"

  @register()
