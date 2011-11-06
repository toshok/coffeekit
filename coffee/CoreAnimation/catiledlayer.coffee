# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CATiledLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Visual Fade
  @fadeDuration: objc.invokeSelector "fadeDuration"

  # Levels of Detail
  ck.addProperty @::, "levelsOfDetail"
  ck.addProperty @::, "levelsOfDetailBias"

  # Layer Tile Size
  ck.addProperty @::, "tileSize"

new ck.RegisterAttribute CATiledLayer, "CATiledLayer"
exports.CATiledLayer = CATiledLayer