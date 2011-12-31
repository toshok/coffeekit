# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISwitch"
exports.UISwitch = class UISwitch extends UIControl
  @register()

  # Initializing the Switch Object
  initWithFrame: objc.invokeSelector "initWithFrame:"

  # Setting the Off/On State
  ck.instanceProperty @, "on", { set: (v) -> @setOn v, false }
  setOn: objc.invokeSelector "setOn:animated:"

  # Customizing the Appearance of the Switch
  ck.instanceProperty @, "onTintColor"
