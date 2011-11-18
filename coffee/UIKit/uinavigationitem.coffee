# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UINavigationItem"
class UINavigationItem extends foundation.NSObject

  # Initializing an Item
  initWithTitle: objc.invokeSelector "initWithTitle:"

  # Getting and Setting Properties
  ck.addProperty @::, "title"
  ck.addProperty @::, "prompt"
  ck.addProperty @::, "backBarButtonItem"
  ck.addProperty @::, "hidesBackButton", { set: (v) -> @setHidesBackButton v, false }
  setHidesBackButton: objc.invokeSelector "setHidesBackButton:animated:"
  ck.addProperty @::, "leftItemsSupplementBackButton"

  # Customizing Views
  ck.addProperty @::, "titleView"
  ck.addProperty @::, "leftBarButtonItems", { set: (v) -> @setLeftBarButtonItems v, false }
  ck.addProperty @::, "leftBarButtonItem", { set: (v) -> @setLeftBarButtonItem v, false }
  ck.addProperty @::, "rightBarButtonItems", { set: (v) -> @setRightBarButtonItems v, false }
  ck.addProperty @::, "rightBarButtonItem", { set: (v) -> @setRightBarButtonItem v, false }
  setLeftBarButtonItems: objc.invokeSelector "setLeftBarButtonItems:animated:"
  setLeftBarButtonItem: objc.invokeSelector "setLeftBarButtonItem:animated:"
  setRightBarButtonItems: objc.invokeSelector "setRightBarButtonItems:animated:"
  setRightBarButtonItem: objc.invokeSelector "setRightBarButtonItem:animated:"

new ck.RegisterAttribute UINavigationItem, "UINavigationItem"
exports.UINavigationItem = UINavigationItem
