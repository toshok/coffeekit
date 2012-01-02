# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITabBarController"
exports.UITabBarController = class UITabBarController extends UIViewController
  # Accessing the Tab Bar Controller Properties
  @autoboxProperty  "delegate", UITabBarControllerDelegate
  @instanceProperty "tabBar"

  # Managing the View Controllers
  setViewControllers: @nativeSelector "setViewControllers:animated:"
  @instanceProperty   "viewControllers", { set: (v) -> @setViewControllers v, false }
  @instanceProperty   "customizableViewControllers"
  @instanceProperty   "moreNavigationController"

  # Managing the Selected Tab
  @instanceProperty   "selectedViewController"
  @instanceProperty   "selectedIndex"

  @register()
