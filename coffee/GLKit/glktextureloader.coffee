# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKTextureLoader = class GLKTextureLoader extends foundation.NSObject
  # Initialization
  initWithSharegroup: @nativeSelector "initWithSharegroup:"

  # Loading Textures from Files
  @textureWithContentsOfFile: @nativeSelector "textureWithContentsOfFile:options:error:"
  textureWithContentsOfFile: @nativeSelector "textureWithContentsOfFile:options:queue:completionHandler:"

  # Loading a Texture From a URL
  @textureWithContentsOfURL: @nativeSelector "textureWithContentsOfURL:options:error:"
  textureWithContentsOfURL: @nativeSelector "textureWithContentsOfURL:options:queue:completionHandler:"

  # Creating Textures from In-Memory Representations
  @textureWithContentsOfData: @nativeSelector "textureWithContentsOfData:options:error:"
  textureWithContentsOfData: @nativeSelector "textureWithContentsOfData:options:queue:completionHandler:"

  # Creating Textures from CGImages
  @textureWithCGImage: @nativeSelector "textureWithCGImage:options:error:"
  textureWithCGImage: @nativeSelector "textureWithCGImage:options:queue:completionHandler:"

  # Loading Cube Maps from Files
  @cubeMapWithContentsOfFile: @nativeSelector "cubeMapWithContentsOfFile:options:error:"
  cubeMapWithContentsOfFile: @nativeSelector "cubeMapWithContentsOfFile:options:queue:completionHandler:"
  @cubeMapWithContentsOfFiles: @nativeSelector "cubeMapWithContentsOfFiles:options:error:"
  cubeMapWithContentsOfFiles: @nativeSelector "cubeMapWithContentsOfFiles:options:queue:completionHandler:"

  # Loading Cube Maps from URLs
  @cubeMapWithContentsOfURL: @nativeSelector "cubeMapWithContentsOfURL:options:error:"
  cubeMapWithContentsOfURL: @nativeSelector "cubeMapWithContentsOfURL:options:queue:completionHandler:"

  @register()
