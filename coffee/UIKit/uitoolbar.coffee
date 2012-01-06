# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIToolbar"
exports.UIToolbar = class UIToolbar extends UIView
  # Configuring the Toolbar
  @instanceProperty "barStyle"
  @instanceProperty "translucent"

  # Configuring Toolbar Items
  @instanceProperty "items", { set: (v) -> @setItems v, false }
  setItems: @nativeSelector("setItems:animated:").
                    returns(-> ck.sig.Void).
                     params(-> [ foundation.NSObject, ck.sig.Bool ]) # XXX param 1 is actually an array, we should have a ck.sig.NSArray for that

  # Customizing Appearance
  backgroundImage:    @nativeSelector "backgroundImageForToolbarPosition:barMetrics:"
  setBackgroundImage: @nativeSelector "setBackgroundImage:forToolbarPosition:barMetrics:"
  @instanceProperty "tintColor"

  @register()
