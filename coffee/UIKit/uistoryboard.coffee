# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIStoryboard"
exports.UIStoryboard = class UIStoryboard extends foundation.NSObject
  # Getting a Storyboard Object
  storyboardWithName:                      @nativeSelector "storyboardWithName:bundle:"

  # Instantiating Storyboard View Controllers
  instantiateInitialViewController:        @nativeSelector "instantiateInitialViewController"
  instantiateViewControllerWithIdentifier: @nativeSelector "instantiateViewControllerWithIdentifier:"

  @register()
