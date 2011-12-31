# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIStoryboard"
exports.UIStoryboard = class UIStoryboard extends foundation.NSObject
  @register()

  # Getting a Storyboard Object
  storyboardWithName: objc.invokeSelector "storyboardWithName:bundle:"

  # Instantiating Storyboard View Controllers
  instantiateInitialViewController: objc.invokeSelector "instantiateInitialViewController"
  instantiateViewControllerWithIdentifier: objc.invokeSelector "instantiateViewControllerWithIdentifier:"
