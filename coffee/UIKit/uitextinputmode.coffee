#console.log "UITextInputMode"
class UITextInputMode extends foundation.NSObject

  # Getting the Current and Active Text-Input Modes
  @currentInputMode: objc.invokeSelector ("currentInputMode")
  @activeInputModes: objc.invokeSelector ("activeInputModes")

  # Getting the Primary Language
  ck.addProperty @::, "primaryLanguage"

new ck.RegisterAttribute UITextInputMode, "UITextInputMode"
exports.UITextInputMode = UITextInputMode
