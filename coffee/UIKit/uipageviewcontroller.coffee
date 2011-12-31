# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPageViewController"
exports.UIPageViewController = class UIPageViewController extends UIViewController
  @register()

  # Creating Page View Controllers
  initWithTransitionStyle: objc.invokeSelector "initWithTransitionStyle:navigationOrientation:options:"
  ck.instanceProperty @, "dataSource"
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIPageViewControllerDelegate) }

  # Providing Content
  setViewControllers: objc.invokeSelector "setViewControllers:direction:animated:completion:"
  ck.instanceProperty @, "viewControllers", { set: (v) -> @setViewControllers v, false, null }
  ck.instanceProperty @, "gestureRecognizers"

  # Display Options
  ck.instanceProperty @, "navigationOrientation"
  ck.instanceProperty @, "spineLocation"
  ck.instanceProperty @, "transitionStyle"
  ck.instanceProperty @, "doubleSided"
