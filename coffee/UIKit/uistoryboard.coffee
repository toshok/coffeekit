#console.log "UIStoryboard"
class UIStoryboard extends foundation.NSObject

  # Getting a Storyboard Object
  storyboardWithName: objc.invokeSelector "storyboardWithName:bundle:"

  # Instantiating Storyboard View Controllers
  instantiateInitialViewController: objc.invokeSelector "instantiateInitialViewController"
  instantiateViewControllerWithIdentifier: objc.invokeSelector "instantiateViewControllerWithIdentifier:"

new ck.RegisterAttribute UIStoryboard, "UIStoryboard"
exports.UIStoryboard = UIStoryboard
