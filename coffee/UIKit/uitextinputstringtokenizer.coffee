# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextInputStringTokenizer"
class UITextInputStringTokenizer extends foundation.NSObject

  # Initializing a Tokenizer
  initWithTextInput: objc.invokeSelector "initWithTextInput:"

new ck.RegisterAttribute UITextInputStringTokenizer, "UITextInputStringTokenizer"
exports.UITextInputStringTokenizer = UITextInputStringTokenizer
