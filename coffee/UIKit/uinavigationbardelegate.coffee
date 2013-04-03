# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UINavigationBarDelegate"

exports.UINavigationBarDelegate = class UINavigationBarDelegate extends foundation.Protocol

  # Pushing Items
  shouldPushItem: @optionalMethod "navigationBar:shouldPushItem:"
  didPushItem:    @optionalMethod "navigationBar:didPushItem:"

  # Popping Items
  shouldPopItem:  @optionalMethod "navigationBar:shouldPopItem:"
  didPopItem:     @optionalMethod "navigationBar:didPopItem:"

  @register()