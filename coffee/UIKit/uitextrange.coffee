#console.log "UITextRange"
class UITextRange extends foundation.NSObject

  # Defining Ranges of Text
  ck.addProperty @::, "start"
  ck.addProperty @::, "end"
  ck.addProperty @::, "empty"

new ck.RegisterAttribute UITextRange, "UITextRange"
exports.UITextRange = UITextRange
