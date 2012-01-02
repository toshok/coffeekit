# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITabBarDelegate"

exports.UITabBarDelegate = class UITabBarDelegate extends foundation.Protocol

  # Customizing Tab Bars
  willBeginCustomizingItems: @optionalMethod "tabBar:willBeginCustomizingItems:"
  didBeginCustomizingItems:  @optionalMethod "tabBar:didBeginCustomizingItems:"
  willEndCustomizingItems:   @optionalMethod "tabBar:willEndCustomizingItems:changed:"
  didEndCustomizingItems:    @optionalMethod "tabBar:didEndCustomizingItems:changed:"
  didSelectItem:             @requiredMethod "tabBar:didSelectItem:"

  @register()