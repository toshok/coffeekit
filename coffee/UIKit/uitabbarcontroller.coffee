#console.log "UITabBarController"
class UITabBarController extends UIViewController

  # Accessing the Tab Bar Controller Properties
  ck.addProperty @::, "delegate"
  ck.addProperty @::, "tabBar"

  # Managing the View Controllers
  ck.addProperty @::, "viewControllers", { set: (v) -> setViewControllers v, false }
  setViewControllers: objc.invokeSelector ("setViewControllers:animated:")
  ck.addProperty @::, "customizableViewControllers"
  ck.addProperty @::, "moreNavigationController"

  # Managing the Selected Tab
  ck.addProperty @::, "selectedViewController"
  ck.addProperty @::, "selectedIndex"

new ck.RegisterAttribute UITabBarController, "UITabBarController"
exports.UITabBarController = UITabBarController
