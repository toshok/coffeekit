# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextRange"
exports.UITextRange = class UITextRange extends foundation.NSObject
  @register()

  # Defining Ranges of Text
  ck.instanceProperty @, "start"
  ck.instanceProperty @, "end"
  ck.instanceProperty @, "empty"
