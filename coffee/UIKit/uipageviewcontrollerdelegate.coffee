# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPageViewControllerDelegate"

exports.UIPageViewControllerDelegate = class UIPageViewControllerDelegate extends foundation.Protocol

  # Responding to Page View Controller Events
  didFinishAnimating:                   @optionalMethod "pageViewController:didFinishAnimating:previousViewControllers:transitionCompleted:"
  spineLocationForInterfaceOrientation: @optionalMethod "pageViewController:spineLocationForInterfaceOrientation:"

  @register()