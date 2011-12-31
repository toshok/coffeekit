# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CATiledLayer = class CATiledLayer extends CALayer
  @register()

  # Visual Fade
  @fadeDuration: objc.invokeSelector "fadeDuration"

  # Levels of Detail
  ck.instanceProperty @, "levelsOfDetail"
  ck.instanceProperty @, "levelsOfDetailBias"

  # Layer Tile Size
  ck.instanceProperty @, "tileSize"
