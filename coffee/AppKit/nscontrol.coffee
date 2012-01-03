# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSContext = class NSControl extends NSView
  # Initializing an NSControl
  initWithFrame: @nativeSelector "initWithFrame:"

  # Setting the Control’s Cell
  @instanceProperty "cellClass"
  @instanceProperty "cell"

  # Enabling and Disabling the Control
  @instanceProperty "enabled", { get: "isEnabled" }

  # Identifying the Selected Cell
  selectedCell: @nativeSelector "selectedCell"
  selectedTag: @nativeSelector "selectedTag"

  # Setting the Control’s Value
  @instanceProperty "doubleValue"
  @instanceProperty "floatValue"
  @instanceProperty "intValue"
  @instanceProperty "integerValue"
  @instanceProperty "objectValue"
  @instanceProperty "stringValue"
  @instanceProperty "attributedStringValue"
  setNeedsDisplay: @nativeSelector "setNeedsDisplay"

  # Interacting with Other Controls
  takeDoubleValueFrom: @nativeSelector "takeDoubleValueFrom:"
  takeFloatValueFrom: @nativeSelector "takeFloatValueFrom:"
  takeIntValueFrom: @nativeSelector "takeIntValueFrom:"
  takeIntegerValueFrom: @nativeSelector "takeIntegerValueFrom:"
  takeObjectValueFrom: @nativeSelector "takeObjectValueFrom:"
  takeStringValueFrom: @nativeSelector "takeStringValueFrom:"

  # Formatting Text
  @instanceProperty "alignment"
  @instanceProperty "font"
  @instanceProperty "formatter"
  @instanceProperty "baseWritingDirection"
  setFloatingPointFormat: @nativeSelector "setFloatingPointFormat:left:right:" # Deprecated in Mac OS X v10.0

  # Managing the Field Editor
  abortEditing: @nativeSelector "abortEditing"
  currentEditor: @nativeSelector "currentEditor"
  validateEditing: @nativeSelector "validateEditing"

  # Resizing the Control
  calcSize: @nativeSelector "calcSize"
  sizeToFit: @nativeSelector "sizeToFit"

  # Displaying a Cell
  selectCell: @nativeSelector "selectCell:"
  drawCell: @nativeSelector "drawCell:"
  drawCellInside: @nativeSelector "drawCellInside:"
  updateCell: @nativeSelector "updateCell:"
  updateCellInside: @nativeSelector "updateCellInside:"

  # Implementing the Target/action Mechanism
  @instanceProperty "action"
  @instanceProperty "target"
  @instanceProperty "continuous", { get: "isContinuous" }
  sendActionTo: @nativeSelector "sendAction:to:"
  sendActionOn: @nativeSelector "sendActionOn:"

  # Getting and Setting Tags
  @instanceProperty "tag"

  # Activating from the Keyboard
  performClick: @nativeSelector "performClick:"
  refusesFirstResponder: @nativeSelector "refusesFirstResponder"
  setRefusesFirstResponder: @nativeSelector "setRefusesFirstResponder:"

  # Tracking the Mouse
  mouseDown: @nativeSelector "mouseDown:"
  @instanceProperty "ignoresMultiClick"

  # Control Editing Notifications
  controlTextDidBeginEditing: @nativeSelector "controlTextDidBeginEditing:"  # delegate method
  controlTextDidChange: @nativeSelector "controlTextDidChange:"  # delegate method
  controlTextDidEndEditing: @nativeSelector "controlTextDidEndEditing:"  # delegate method

  # Supporting Constraint-Based Layout
  invalidateIntrinsicContentSizeForCell: @nativeSelector "invalidateIntrinsicContentSizeForCell:"

  @register()


class NSControlProxy extends foundation.NSObject
  constructor: (fn) ->
                 super()
                 @fn = fn

  proxyAction: @nativeSelector("action").
                    returnType(-> ck.sig.Void).
                          impl -> @fn()

  @register()
