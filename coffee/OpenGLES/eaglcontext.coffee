class EAGLContext extends foundation.NSObject

  # Creating EAGL Contexts
  initWithAPI: objc.invokeSelector ("initWithAPI:")
  initWithAPIAndSharegroup: objc.invokeSelector ("initWithAPI:sharegroup:")

  # Setting the Current EAGL Context
  @setCurrentContext: objc.invokeSelector ("setCurrentContext:")

  # Attaching Storage to a Renderbuffer
  renderbufferStorage: objc.invokeSelector ("renderbufferStorage:fromDrawable:")

  # Displaying a Renderbuffer
  presentRenderbuffer: objc.invokeSelector ("presentRenderbuffer:")

  # Getting EAGL Context Information
  ck.addProperty @::, "API"
  ck.addProperty @::, "sharegroup"
  @currentContext: objc.invokeSelector ("currentContext")

new ck.RegisterAttribute EAGLContext, "EAGLContext"
exports.EAGLContext = EAGLContext
