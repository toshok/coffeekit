# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UINavigationItem"
exports.UINavigationItem = class UINavigationItem extends foundation.NSObject
  # Initializing an Item
  initWithTitle: @nativeSelector "initWithTitle:"

  # Getting and Setting Properties
  @instanceProperty   "title"
  @instanceProperty   "prompt"
  @instanceProperty   "backBarButtonItem"
  @instanceProperty   "hidesBackButton", { set: (v) -> @setHidesBackButton v, false }
  setHidesBackButton: @nativeSelector "setHidesBackButton:animated:"
  @instanceProperty   "leftItemsSupplementBackButton"

  # Customizing Views
  @instanceProperty       "titleView"
  @instanceProperty       "leftBarButtonItems", { set: (v) -> @setLeftBarButtonItems v, false }
  @instanceProperty       "leftBarButtonItem", { set: (v) -> @setLeftBarButtonItem v, false }
  @instanceProperty       "rightBarButtonItems", { set: (v) -> @setRightBarButtonItems v, false }
  @instanceProperty       "rightBarButtonItem", { set: (v) -> @setRightBarButtonItem v, false }
  setLeftBarButtonItems:  @nativeSelector "setLeftBarButtonItems:animated:"
  setLeftBarButtonItem:   @nativeSelector "setLeftBarButtonItem:animated:"
  setRightBarButtonItems: @nativeSelector "setRightBarButtonItems:animated:"
  setRightBarButtonItem:  @nativeSelector "setRightBarButtonItem:animated:"

  @register()
