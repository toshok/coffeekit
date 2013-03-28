# This file is part of coffeekit.  for licensing information, see the LICENSE file


ck.register exports.NSTableCellView = class NSTableCellView extends NSView

  # Represented Object
  @instanceProperty "objectValue"

  # Displayed Items
  @instanceProperty "imageView"
  @instanceProperty "textField"

  # Getting and Setting the Background Style
  @instanceProperty "backgroundStyle"

  # Getting and Setting the Row Size Style
  @instanceProperty "rowSizeStyle"

  # Dragging Images
  @instanceProperty "draggingImageComponents", set: null