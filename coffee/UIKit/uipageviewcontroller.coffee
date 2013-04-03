# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIPageViewController"
exports.UIPageViewController = class UIPageViewController extends UIViewController
  # Creating Page View Controllers
  initWithTransitionStyle: @nativeSelector "initWithTransitionStyle:navigationOrientation:options:"
  @instanceProperty "dataSource"
  @autoboxProperty  "delegate", UIPageViewControllerDelegate

  # Providing Content
  setViewControllers: @nativeSelector "setViewControllers:direction:animated:completion:"
  @instanceProperty "viewControllers", { set: (v) -> @setViewControllers v, false, null }
  @instanceProperty "gestureRecognizers"

  # Display Options
  @instanceProperty "navigationOrientation"
  @instanceProperty "spineLocation"
  @instanceProperty "transitionStyle"
  @instanceProperty "doubleSided"

  @register()
