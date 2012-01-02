# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKTextureInfo = class GLKTextureInfo extends foundation.NSObject
  # Reading Texture Information
  @instanceProperty "glName"
  @instanceProperty "glTarget"
  @instanceProperty "height"
  @instanceProperty "width"
  @instanceProperty "textureOrigin"
  @instanceProperty "alphaState"
  @instanceProperty "containsMipmaps"

  @register()
