# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CATextLayer = class CATextLayer extends CALayer
  # Getting and Setting the Text
  @instanceProperty "string"

  # Text Visual Properties
  @instanceProperty "font"
  @instanceProperty "fontSize"
  @instanceProperty "foregroundColor"

  # Text Alignment and Truncation
  @instanceProperty "wrapped"
  @instanceProperty "alignmentMode"
  @instanceProperty "truncationMode"

  @register()
