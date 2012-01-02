# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISwitch"
exports.UISwitch = class UISwitch extends UIControl
  # Initializing the Switch Object
  initWithFrame: @nativeSelector "initWithFrame:"

  # Setting the Off/On State
  @instanceProperty "on", { set: (v) -> @setOn v, false }
  setOn: @nativeSelector "setOn:animated:"

  # Customizing the Appearance of the Switch
  @instanceProperty "onTintColor"

  @register()
