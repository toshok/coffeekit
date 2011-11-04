# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextRange"
class UITextRange extends foundation.NSObject

  # Defining Ranges of Text
  ck.addProperty @::, "start"
  ck.addProperty @::, "end"
  ck.addProperty @::, "empty"

new ck.RegisterAttribute UITextRange, "UITextRange"
exports.UITextRange = UITextRange
