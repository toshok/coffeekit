# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CATextLayer = class CATextLayer extends CALayer
  @register()

  # Getting and Setting the Text
  ck.instanceProperty @, "string"

  # Text Visual Properties
  ck.instanceProperty @, "font"
  ck.instanceProperty @, "fontSize"
  ck.instanceProperty @, "foregroundColor"

  # Text Alignment and Truncation
  ck.instanceProperty @, "wrapped"
  ck.instanceProperty @, "alignmentMode"
  ck.instanceProperty @, "truncationMode"
