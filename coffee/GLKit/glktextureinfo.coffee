# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKTextureInfo = class GLKTextureInfo extends foundation.NSObject
  @register()

  # Reading Texture Information
  ck.instanceProperty @, "glName"
  ck.instanceProperty @, "glTarget"
  ck.instanceProperty @, "height"
  ck.instanceProperty @, "width"
  ck.instanceProperty @, "textureOrigin"
  ck.instanceProperty @, "alphaState"
  ck.instanceProperty @, "containsMipmaps"
