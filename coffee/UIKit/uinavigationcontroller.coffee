# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UINavigationController"
exports.UINavigationController = class UINavigationController extends UIViewController
  @register()

  # Creating Navigation Controllers
  initWithRootViewController: objc.invokeSelector "initWithRootViewController:"

  # Accessing Items on the Navigation Stack
  ck.instanceProperty @, "topViewController"
  ck.instanceProperty @, "visibleViewController"
  ck.instanceProperty @, "viewControllers", { set: (v) -> @setViewControllers v, false }
  setViewControllers: objc.invokeSelector "setViewControllers:animated:"

  # Pushing and Popping Stack Items
  pushViewController: objc.invokeSelector "pushViewController:animated:"
  popViewController: objc.invokeSelector "popViewControllerAnimated:"
  popToRootViewController: objc.invokeSelector "popToRootViewControllerAnimated:"
  popToViewController: objc.invokeSelector "popToViewController:animated:"

  # Configuring Navigation Bars
  ck.instanceProperty @, "navigationBar"
  ck.instanceProperty @, "navigationBarHidden", { set: (v) -> @setNavigationBarHidden v, false }
  setNavigationBarHidden: objc.invokeSelector "setNavigationBarHidden:animated:"

  # Accessing the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UINavigationControllerDelegate) }

  # Configuring Custom Toolbars
  ck.instanceProperty @, "toolbar"
  setToolbarHidden: objc.invokeSelector "setToolbarHidden:animated:"
  ck.instanceProperty @, "toolbarHidden", { set: (v) -> @setToolbarHidden v, false }
