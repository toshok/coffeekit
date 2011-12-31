# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIMenuItem"
exports.UIMenuItem = class UIMenuItem extends foundation.NSObject
  @register()

  # Creating a Menu Item
  initWithTitle: objc.invokeSelector "initWithTitle:action:"

  # Accessing Menu-Item Attributes
  ck.instanceProperty @, "title"
  ck.instanceProperty @, "action"
