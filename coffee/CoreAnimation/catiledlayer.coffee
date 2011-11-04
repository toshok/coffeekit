# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CATiledLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Visual Fade
  @fadeDuration: objc.generateFunctionFromSelector ("fadeDuration")

  # Levels of Detail
  ck.objcProperty @::, "levelsOfDetail"
  ck.objcProperty @::, "levelsOfDetailBias"

  # Layer Tile Size
  ck.objcProperty @::, "tileSize"

new ck.RegisterAttribute CATiledLayer, "CATiledLayer"
exports.CATiledLayer = CATiledLayer