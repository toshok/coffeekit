# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIBarItem"
class UIBarItem extends UIView

  constructor: (handle) ->
    super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Getting and Setting Properties
  ck.addProperty @::, "enabled"
  ck.addProperty @::, "image"
  ck.addProperty @::, "landscapeImagePhone"
  ck.addProperty @::, "imageInsets"
  ck.addProperty @::, "landscapeImagePhoneInsets"
  ck.addProperty @::, "title"
  ck.addProperty @::, "tag"

  # Customizing Appearance
  setTitleTextAttributes: objc.invokeSelector "setTitleTextAttributes:forState:"
  getTitleTextAttributes: objc.invokeSelector "titleTextAttributesForState:"


new ck.RegisterAttribute UIBarItem, "UIBarItem"
exports.UIBarItem = UIBarItem
