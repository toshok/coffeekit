# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIToolbar"
class UIToolbar extends UIView

  # Configuring the Toolbar
  ck.addProperty @::, "barStyle"
  ck.addProperty @::, "translucent"

  # Configuring Toolbar Items
  ck.addProperty @::, "items", { set: (v) -> @setItems v, false }
  setItems: objc.invokeSelector "setItems:animated:"

  # Customizing Appearance
  backgroundImage: objc.invokeSelector "backgroundImageForToolbarPosition:barMetrics:"
  setBackgroundImage: objc.invokeSelector "setBackgroundImage:forToolbarPosition:barMetrics:"
  ck.addProperty @::, "tintColor"

new ck.RegisterAttribute UIToolbar, "UIToolbar"
exports.UIToolbar = UIToolbar
