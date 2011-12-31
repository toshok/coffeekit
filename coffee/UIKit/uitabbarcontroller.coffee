# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITabBarController"
exports.UITabBarController = class UITabBarController extends UIViewController
  @register()

  # Accessing the Tab Bar Controller Properties
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UITabBarControllerDelegate) }
  ck.instanceProperty @, "tabBar"

  # Managing the View Controllers
  ck.instanceProperty @, "viewControllers", { set: (v) -> @setViewControllers v, false }
  setViewControllers: objc.invokeSelector "setViewControllers:animated:"
  ck.instanceProperty @, "customizableViewControllers"
  ck.instanceProperty @, "moreNavigationController"

  # Managing the Selected Tab
  ck.instanceProperty @, "selectedViewController"
  ck.instanceProperty @, "selectedIndex"
