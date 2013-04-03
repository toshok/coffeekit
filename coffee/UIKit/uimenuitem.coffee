# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIMenuItem"
exports.UIMenuItem = class UIMenuItem extends foundation.NSObject
  # Creating a Menu Item
  initWithTitle: @nativeSelector "initWithTitle:action:"

  # Accessing Menu-Item Attributes
  @instanceProperty "title"
  @instanceProperty "action"

  @register()
