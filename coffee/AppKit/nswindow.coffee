# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSWindow = class NSWindow extends foundation.NSResponder
  @instanceProperty "title"
  @instanceProperty "contentView"

  makeKeyAndOrderFront: objc.invokeSelector "makeKeyAndOrderFront:"
  initWithCoder: objc.invokeSelector "initWithCoder:"
  setFrame: objc.invokeSelector "setFrame:display:"


  @register()
