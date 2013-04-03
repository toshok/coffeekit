# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIBarItem"
exports.UIBarItem = class UIBarItem extends UIView
  # Getting and Setting Properties
  @instanceProperty "enabled"
  @instanceProperty "image"
  @instanceProperty "landscapeImagePhone"
  @instanceProperty "imageInsets"
  @instanceProperty "landscapeImagePhoneInsets"
  @instanceProperty "title"
  @instanceProperty "tag"

  # Customizing Appearance
  setTitleTextAttributes: @nativeSelector "setTitleTextAttributes:forState:"
  getTitleTextAttributes: @nativeSelector "titleTextAttributesForState:"

  @register()
