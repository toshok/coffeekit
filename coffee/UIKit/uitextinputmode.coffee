# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextInputMode"
exports.UITextInputMode = class UITextInputMode extends foundation.NSObject
  @register()

  # Getting the Current and Active Text-Input Modes
  @currentInputMode: objc.invokeSelector "currentInputMode"
  @activeInputModes: objc.invokeSelector "activeInputModes"

  # Getting the Primary Language
  ck.instanceProperty @, "primaryLanguage"
