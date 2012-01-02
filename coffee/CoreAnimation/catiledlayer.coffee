# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CATiledLayer = class CATiledLayer extends CALayer
  # Visual Fade
  @fadeDuration: @nativeSelector "fadeDuration"

  # Levels of Detail
  @instanceProperty "levelsOfDetail"
  @instanceProperty "levelsOfDetailBias"

  # Layer Tile Size
  @instanceProperty "tileSize"

  @register()
