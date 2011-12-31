# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIToolbar"
exports.UIToolbar = class UIToolbar extends UIView
  @register()

  # Configuring the Toolbar
  ck.instanceProperty @, "barStyle"
  ck.instanceProperty @, "translucent"

  # Configuring Toolbar Items
  ck.instanceProperty @, "items", { set: (v) -> @setItems v, false }
  setItems: objc.invokeSelector "setItems:animated:"

  # Customizing Appearance
  backgroundImage: objc.invokeSelector "backgroundImageForToolbarPosition:barMetrics:"
  setBackgroundImage: objc.invokeSelector "setBackgroundImage:forToolbarPosition:barMetrics:"
  ck.instanceProperty @, "tintColor"
