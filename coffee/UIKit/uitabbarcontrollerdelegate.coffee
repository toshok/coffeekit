# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITabBarControllerDelegate"

exports.UITabBarControllerDelegate = class UITabBarControllerDelegate extends foundation.Protocol

  # Managing Tab Bar Selections
  shouldSelectViewController:          @optionalMethod "tabBarController:shouldSelectViewController:"
  didSelectViewController:             @optionalMethod "tabBarController:didSelectViewController:"

  # Managing Tab Bar Customizations
  willBeginCustomizingViewControllers: @optionalMethod "tabBarController:willBeginCustomizingViewControllers:"
  willEndCustomizingViewControllers:   @optionalMethod "tabBarController:willEndCustomizingViewControllers:changed:"
  didEndCustomizingViewControllers:    @optionalMethod "tabBarController:didEndCustomizingViewControllers:changed:"

  @register()