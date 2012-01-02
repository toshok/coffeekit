# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextInputMode"
exports.UITextInputMode = class UITextInputMode extends foundation.NSObject
  # Getting the Current and Active Text-Input Modes
  @currentInputMode: @nativeSelector "currentInputMode"
  @activeInputModes: @nativeSelector "activeInputModes"

  # Getting the Primary Language
  @instanceProperty "primaryLanguage"

  @register()