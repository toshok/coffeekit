# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIMenuController"
exports.UIMenuController = class UIMenuController extends foundation.NSObject
  @register()

  # Getting the Menu Controller Instance
  @sharedMenuController: objc.invokeSelector "sharedMenuController"

  # Showing and Hiding the Menu
  ck.instanceProperty @, "menuVisible", { set: (v) -> @setMenuVisible v, false }
  setMenuVisible: objc.invokeSelector "setMenuVisible:animated:"

  # Positioning the Menu
  setTargetRect: objc.invokeSelector "setTargetRect:inView:"
  ck.instanceProperty @, "menuFrame"
  ck.instanceProperty @, "arrowDirection"

  # Updating the Menu
  update: objc.invokeSelector "update"

  # Customizing Menu Items
  ck.instanceProperty @, "menuItems"
