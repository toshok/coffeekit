# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GLKTextureLoader extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Initialization
  initWithSharegroup: objc.invokeSelector ("initWithSharegroup:")

  # Loading Textures from Files
  @textureWithContentsOfFile: objc.invokeSelector ("textureWithContentsOfFile:options:error:")
  textureWithContentsOfFile: objc.invokeSelector ("textureWithContentsOfFile:options:queue:completionHandler:")

  # Loading a Texture From a URL
  @textureWithContentsOfURL: objc.invokeSelector ("textureWithContentsOfURL:options:error:")
  textureWithContentsOfURL: objc.invokeSelector ("textureWithContentsOfURL:options:queue:completionHandler:")

  # Creating Textures from In-Memory Representations
  @textureWithContentsOfData: objc.invokeSelector ("textureWithContentsOfData:options:error:")
  textureWithContentsOfData: objc.invokeSelector ("textureWithContentsOfData:options:queue:completionHandler:")

  # Creating Textures from CGImages
  @textureWithCGImage: objc.invokeSelector ("textureWithCGImage:options:error:")
  textureWithCGImage: objc.invokeSelector ("textureWithCGImage:options:queue:completionHandler:")

  # Loading Cube Maps from Files
  @cubeMapWithContentsOfFile: objc.invokeSelector ("cubeMapWithContentsOfFile:options:error:")
  cubeMapWithContentsOfFile: objc.invokeSelector ("cubeMapWithContentsOfFile:options:queue:completionHandler:")
  @cubeMapWithContentsOfFiles: objc.invokeSelector ("cubeMapWithContentsOfFiles:options:error:")
  cubeMapWithContentsOfFiles: objc.invokeSelector ("cubeMapWithContentsOfFiles:options:queue:completionHandler:")

  # Loading Cube Maps from URLs
  @cubeMapWithContentsOfURL: objc.invokeSelector ("cubeMapWithContentsOfURL:options:error:")
  cubeMapWithContentsOfURL: objc.invokeSelector ("cubeMapWithContentsOfURL:options:queue:completionHandler:")

new ck.RegisterAttribute GLKTextureLoader, "GLKTextureLoader"
exports.GLKTextureLoader = GLKTextureLoader
