# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UINavigationControllerDelegate"

exports.UINavigationControllerDelegate = class UINavigationControllerDelegate extends foundation.Protocol

  # Customizing Behavior
  willShowViewController: @optionalMethod "navigationController:willShowViewController:animated:"
  didShowViewController:  @optionalMethod "navigationController:didShowViewController:animated:"

  @register()