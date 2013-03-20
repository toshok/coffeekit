# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSWindow = class NSWindow extends foundation.NSResponder
  @instanceProperty "title"
  @instanceProperty "contentView"

  makeKeyAndOrderFront: @nativeSelector "makeKeyAndOrderFront:"
  initWithCoder: @nativeSelector "initWithCoder:"
  setFrame: @nativeSelector "setFrame:display:"


  @register()
