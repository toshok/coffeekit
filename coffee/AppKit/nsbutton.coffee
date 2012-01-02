# This file is part of coffeekit.  for licensing information, see the LICENSE file


exports.NSButton = class NSButton extends NSControl
  @instanceProperty "title"
  @instanceProperty "bezelStyle"
  @instanceProperty "buttonType"

  @::__defineSetter__ "clicked", (v) ->
                                   if v
                                     @proxy = new NSControlProxy v
                                     @target = @proxy
                                     @action = @proxy.proxyAction
                                   else
                                     @proxy = null
                                     @target = null
                                     @action = null

  @register()
