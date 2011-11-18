# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISwitch"
class UISwitch extends UIControl

  # Initializing the Switch Object
  initWithFrame: objc.invokeSelector "initWithFrame:"

  # Setting the Off/On State
  ck.addProperty @::, "on", { set: (v) -> @setOn v, false }
  setOn: objc.invokeSelector "setOn:animated:"

  # Customizing the Appearance of the Switch
  ck.addProperty @::, "onTintColor"

new ck.RegisterAttribute UISwitch, "UISwitch"
exports.UISwitch = UISwitch
