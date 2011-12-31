# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIBarItem"
exports.UIBarItem = class UIBarItem extends UIView
  @register()

  # Getting and Setting Properties
  ck.instanceProperty @, "enabled"
  ck.instanceProperty @, "image"
  ck.instanceProperty @, "landscapeImagePhone"
  ck.instanceProperty @, "imageInsets"
  ck.instanceProperty @, "landscapeImagePhoneInsets"
  ck.instanceProperty @, "title"
  ck.instanceProperty @, "tag"

  # Customizing Appearance
  setTitleTextAttributes: objc.invokeSelector "setTitleTextAttributes:forState:"
  getTitleTextAttributes: objc.invokeSelector "titleTextAttributesForState:"
