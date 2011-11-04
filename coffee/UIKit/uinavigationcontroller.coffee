#console.log "UINavigationController"
class UINavigationController extends UIViewController

  # Creating Navigation Controllers
  initWithRootViewController: objc.invokeSelector ("initWithRootViewController:")

  # Accessing Items on the Navigation Stack
  ck.addProperty @::, "topViewController"
  ck.addProperty @::, "visibleViewController"
  ck.addProperty @::, "viewControllers", { set: (v) -> setViewControllers v, false }
  setViewControllers: objc.invokeSelector ("setViewControllers:animated:")

  # Pushing and Popping Stack Items
  pushViewController: objc.invokeSelector ("pushViewController:animated:")
  popViewController: objc.invokeSelector ("popViewControllerAnimated:")
  popToRootViewController: objc.invokeSelector ("popToRootViewControllerAnimated:")
  popToViewController: objc.invokeSelector ("popToViewController:animated:")

  # Configuring Navigation Bars
  ck.addProperty @::, "navigationBar"
  ck.addProperty @::, "navigationBarHidden", { set: (v) -> setNavigationBarHidden v, false }
  setNavigationBarHidden: objc.invokeSelector ("setNavigationBarHidden:animated:")

  # Accessing the Delegate
  ck.addProperty @::, "delegate"

  # Configuring Custom Toolbars
  ck.addProperty @::, "toolbar"
  setToolbarHidden: objc.invokeSelector ("setToolbarHidden:animated:")
  ck.addProperty @::, "toolbarHidden", { set: (v) -> setToolbarHidden v, false }

new ck.RegisterAttribute UINavigationController, "UINavigationController"
exports.UINavigationController = UINavigationController
