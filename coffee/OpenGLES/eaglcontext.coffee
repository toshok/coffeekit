# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.EAGLContext = class EAGLContext extends foundation.NSObject
  # Creating EAGL Contexts
  initWithAPI: @nativeSelector "initWithAPI:"
  initWithAPIAndSharegroup: @nativeSelector "initWithAPI:sharegroup:"

  # Setting the Current EAGL Context
  @setCurrentContext: @nativeSelector "setCurrentContext:"

  # Attaching Storage to a Renderbuffer
  renderbufferStorage: @nativeSelector "renderbufferStorage:fromDrawable:"

  # Displaying a Renderbuffer
  presentRenderbuffer: @nativeSelector "presentRenderbuffer:"

  # Getting EAGL Context Information
  @instanceProperty "API"
  @instanceProperty "sharegroup"
  @currentContext: @nativeSelector "currentContext"

  @register()
