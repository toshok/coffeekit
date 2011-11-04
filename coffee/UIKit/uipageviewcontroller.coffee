# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPageViewController"
class UIPageViewController extends UIViewController

  # Creating Page View Controllers
  initWithTransitionStyle: objc.invokeSelector "initWithTransitionStyle:navigationOrientation:options:"
  ck.addProperty @::, "dataSource"
  ck.addProperty @::, "delegate"

  # Providing Content
  setViewControllers: objc.invokeSelector "setViewControllers:direction:animated:completion:"
  ck.addProperty @::, "viewControllers", { set: (v) -> setViewControllers v, false, null }
  ck.addProperty @::, "gestureRecognizers"

  # Display Options
  ck.addProperty @::, "navigationOrientation"
  ck.addProperty @::, "spineLocation"
  ck.addProperty @::, "transitionStyle"
  ck.addProperty @::, "doubleSided"

new ck.RegisterAttribute UIPageViewController, "UIPageViewController"
exports.UIPageViewController = UIPageViewController
