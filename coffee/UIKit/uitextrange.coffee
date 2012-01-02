# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextRange"
exports.UITextRange = class UITextRange extends foundation.NSObject
  # Defining Ranges of Text
  @instanceProperty "start"
  @instanceProperty "end"
  @instanceProperty "empty"

  @register()
