# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.EAGLContext = class EAGLContext extends foundation.NSObject
  @register()

  # Creating EAGL Contexts
  initWithAPI: objc.invokeSelector "initWithAPI:"
  initWithAPIAndSharegroup: objc.invokeSelector "initWithAPI:sharegroup:"

  # Setting the Current EAGL Context
  @setCurrentContext: objc.invokeSelector "setCurrentContext:"

  # Attaching Storage to a Renderbuffer
  renderbufferStorage: objc.invokeSelector "renderbufferStorage:fromDrawable:"

  # Displaying a Renderbuffer
  presentRenderbuffer: objc.invokeSelector "presentRenderbuffer:"

  # Getting EAGL Context Information
  ck.instanceProperty @, "API"
  ck.instanceProperty @, "sharegroup"
  @currentContext: objc.invokeSelector "currentContext"
