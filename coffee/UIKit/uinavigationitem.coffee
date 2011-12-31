# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UINavigationItem"
exports.UINavigationItem = class UINavigationItem extends foundation.NSObject
  @register()

  # Initializing an Item
  initWithTitle: objc.invokeSelector "initWithTitle:"

  # Getting and Setting Properties
  ck.instanceProperty @, "title"
  ck.instanceProperty @, "prompt"
  ck.instanceProperty @, "backBarButtonItem"
  ck.instanceProperty @, "hidesBackButton", { set: (v) -> @setHidesBackButton v, false }
  setHidesBackButton: objc.invokeSelector "setHidesBackButton:animated:"
  ck.instanceProperty @, "leftItemsSupplementBackButton"

  # Customizing Views
  ck.instanceProperty @, "titleView"
  ck.instanceProperty @, "leftBarButtonItems", { set: (v) -> @setLeftBarButtonItems v, false }
  ck.instanceProperty @, "leftBarButtonItem", { set: (v) -> @setLeftBarButtonItem v, false }
  ck.instanceProperty @, "rightBarButtonItems", { set: (v) -> @setRightBarButtonItems v, false }
  ck.instanceProperty @, "rightBarButtonItem", { set: (v) -> @setRightBarButtonItem v, false }
  setLeftBarButtonItems: objc.invokeSelector "setLeftBarButtonItems:animated:"
  setLeftBarButtonItem: objc.invokeSelector "setLeftBarButtonItem:animated:"
  setRightBarButtonItems: objc.invokeSelector "setRightBarButtonItems:animated:"
  setRightBarButtonItem: objc.invokeSelector "setRightBarButtonItem:animated:"
