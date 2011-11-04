# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIMenuController"
class UIMenuController extends foundation.NSObject

  # Getting the Menu Controller Instance
  @sharedMenuController: objc.invokeSelector "sharedMenuController"

  # Showing and Hiding the Menu
  ck.addProperty @::, "menuVisible", { set: (v) -> setMenuVisible v, false }
  setMenuVisible: objc.invokeSelector "setMenuVisible:animated:"

  # Positioning the Menu
  setTargetRect: objc.invokeSelector "setTargetRect:inView:"
  ck.addProperty @::, "menuFrame"
  ck.addProperty @::, "arrowDirection"

  # Updating the Menu
  update: objc.invokeSelector "update"

  # Customizing Menu Items
  ck.addProperty @::, "menuItems"

new ck.RegisterAttribute UIMenuController, "UIMenuController"
exports.UIMenuController = UIMenuController
