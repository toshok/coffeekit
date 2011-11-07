# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GLKTextureInfo extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Reading Texture Information
  ck.addProperty @::, "glName"
  ck.addProperty @::, "glTarget"
  ck.addProperty @::, "height"
  ck.addProperty @::, "width"
  ck.addProperty @::, "textureOrigin"
  ck.addProperty @::, "alphaState"
  ck.addProperty @::, "containsMipmaps"


new ck.RegisterAttribute GLKTextureInfo, "GLKTextureInfo"
exports.GLKTextureInfo = GLKTextureInfo
