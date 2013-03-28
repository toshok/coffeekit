# This file is part of coffeekit.  for licensing information, see the LICENSE file


ck.register exports.NSTableRowView = class NSTableRowView extends NSView

  # Display Style
  @instanceProperty "emphasized", get: "isEmphasized"
  @instanceProperty "interiorBackgroundStyle", set: null
  @instanceProperty "floating", get: "isFloating"

  # Row Selection
  @instanceProperty "selected", get: "isSelected"
  @instanceProperty "selectionHighlightStyle"

  # Drag and Drop
  @instanceProperty "draggingDestinationFeedbackStyle"
  @instanceProperty "indentationForDropOperation"
  @instanceProperty "targetForDropOperation", get: "isTargetForDropOperation"

  # Row Grouping
  @instanceProperty "groupRowStyle", get: "isGroupRowStyle"
  @instanceProperty "numberOfColumns", set: null

  # Overriding Row View Display Characteristics
  @instanceProperty "backgroundColor"
  drawBackground: @nativeSelector "drawBackgroundInRect:"
  drawDraggingDestinationFeedback: @nativeSelector "drawDraggingDestinationFeedbackInRect:"
  drawSelection: @nativeSelector "drawSelectionInRect:"
  drawSeparator: @nativeSelector "drawSeparatorInRect:"

  # Accessing A Row Column View
  viewAtColumn: @nativeSelector "viewAtColumn:"