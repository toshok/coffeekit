# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UINavigationController"
exports.UINavigationController = class UINavigationController extends UIViewController
  # Creating Navigation Controllers
  initWithRootViewController: @nativeSelector "initWithRootViewController:"

  # Accessing Items on the Navigation Stack
  setViewControllers: 	   @nativeSelector "setViewControllers:animated:"
  @instanceProperty   	   "topViewController"
  @instanceProperty   	   "visibleViewController"
  @instanceProperty   	   "viewControllers", { set: (v) -> @setViewControllers v, false }

  # Pushing and Popping Stack Items
  pushViewController:      @nativeSelector "pushViewController:animated:"
  popViewController:       @nativeSelector "popViewControllerAnimated:"
  popToRootViewController: @nativeSelector "popToRootViewControllerAnimated:"
  popToViewController:     @nativeSelector "popToViewController:animated:"

  # Configuring Navigation Bars
  @instanceProperty       "navigationBar"
  @instanceProperty       "navigationBarHidden", { set: (v) -> @setNavigationBarHidden v, false }
  setNavigationBarHidden: @nativeSelector "setNavigationBarHidden:animated:"

  # Accessing the Delegate
  @autoboxProperty        "delegate", UINavigationControllerDelegate

  # Configuring Custom Toolbars
  @instanceProperty       "toolbar"
  setToolbarHidden:       @nativeSelector "setToolbarHidden:animated:"
  @instanceProperty       "toolbarHidden", { set: (v) -> @setToolbarHidden v, false }

  @register()
