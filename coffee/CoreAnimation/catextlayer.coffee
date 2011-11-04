# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CATextLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Getting and Setting the Text
  ck.objcProperty @::, "string"

  # Text Visual Properties
  ck.objcProperty @::, "font"
  ck.objcProperty @::, "fontSize"
  ck.objcProperty @::, "foregroundColor"

  # Text Alignment and Truncation
  ck.objcProperty @::, "wrapped"
  ck.objcProperty @::, "alignmentMode"
  ck.objcProperty @::, "truncationMode"

new ck.RegisterAttribute CATextLayer, "CATextLayer"
exports.CATextLayer = CATextLayer