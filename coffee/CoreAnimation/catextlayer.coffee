# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CATextLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Getting and Setting the Text
  ck.addProperty @::, "string"

  # Text Visual Properties
  ck.addProperty @::, "font"
  ck.addProperty @::, "fontSize"
  ck.addProperty @::, "foregroundColor"

  # Text Alignment and Truncation
  ck.addProperty @::, "wrapped"
  ck.addProperty @::, "alignmentMode"
  ck.addProperty @::, "truncationMode"

new ck.RegisterAttribute CATextLayer, "CATextLayer"
exports.CATextLayer = CATextLayer