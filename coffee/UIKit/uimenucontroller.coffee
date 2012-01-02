# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIMenuController"
exports.UIMenuController = class UIMenuController extends foundation.NSObject
  # Getting the Menu Controller Instance
  @sharedMenuController: @nativeSelector "sharedMenuController"

  # Showing and Hiding the Menu
  @instanceProperty "menuVisible", { set: (v) -> @setMenuVisible v, false }
  setMenuVisible:   @nativeSelector "setMenuVisible:animated:"

  # Positioning the Menu
  setTargetRect:    @nativeSelector "setTargetRect:inView:"
  @instanceProperty "menuFrame"
  @instanceProperty "arrowDirection"

  # Updating the Menu
  update:           @nativeSelector "update"

  # Customizing Menu Items
  @instanceProperty "menuItems"

  @register()
