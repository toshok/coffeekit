# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSContext = class NSControl extends NSView
  @register()

  # Initializing an NSControl
  initWithFrame: objc.invokeSelector "initWithFrame:"

  # Setting the Control’s Cell
  ck.instanceProperty @, "cellClass"
  ck.instanceProperty @, "cell"

  # Enabling and Disabling the Control
  ck.instanceProperty @, "enabled", { get: "isEnabled" }

  # Identifying the Selected Cell
  selectedCell: objc.invokeSelector "selectedCell"
  selectedTag: objc.invokeSelector "selectedTag"

  # Setting the Control’s Value
  ck.instanceProperty @, "doubleValue"
  ck.instanceProperty @, "floatValue"
  ck.instanceProperty @, "intValue"
  ck.instanceProperty @, "integerValue"
  ck.instanceProperty @, "objectValue"
  ck.instanceProperty @, "stringValue"
  ck.instanceProperty @, "attributedStringValue"
  setNeedsDisplay: objc.invokeSelector "setNeedsDisplay"

  # Interacting with Other Controls
  takeDoubleValueFrom: objc.invokeSelector "takeDoubleValueFrom:"
  takeFloatValueFrom: objc.invokeSelector "takeFloatValueFrom:"
  takeIntValueFrom: objc.invokeSelector "takeIntValueFrom:"
  takeIntegerValueFrom: objc.invokeSelector "takeIntegerValueFrom:"
  takeObjectValueFrom: objc.invokeSelector "takeObjectValueFrom:"
  takeStringValueFrom: objc.invokeSelector "takeStringValueFrom:"

  # Formatting Text
  ck.instanceProperty @, "alignment"
  ck.instanceProperty @, "font"
  ck.instanceProperty @, "formatter"
  ck.instanceProperty @, "baseWritingDirection"
  setFloatingPointFormat: objc.invokeSelector "setFloatingPointFormat:left:right:" # Deprecated in Mac OS X v10.0

  # Managing the Field Editor
  abortEditing: objc.invokeSelector "abortEditing"
  currentEditor: objc.invokeSelector "currentEditor"
  validateEditing: objc.invokeSelector "validateEditing"

  # Resizing the Control
  calcSize: objc.invokeSelector "calcSize"
  sizeToFit: objc.invokeSelector "sizeToFit"

  # Displaying a Cell
  selectCell: objc.invokeSelector "selectCell:"
  drawCell: objc.invokeSelector "drawCell:"
  drawCellInside: objc.invokeSelector "drawCellInside:"
  updateCell: objc.invokeSelector "updateCell:"
  updateCellInside: objc.invokeSelector "updateCellInside:"

  # Implementing the Target/action Mechanism
  ck.instanceProperty @, "action"
  ck.instanceProperty @, "target"
  ck.instanceProperty @, "continuous", { get: "isContinuous" }
  sendActionTo: objc.invokeSelector "sendAction:to:"
  sendActionOn: objc.invokeSelector "sendActionOn:"

  # Getting and Setting Tags
  ck.instanceProperty @, "tag"

  # Activating from the Keyboard
  performClick: objc.invokeSelector "performClick:"
  refusesFirstResponder: objc.invokeSelector "refusesFirstResponder"
  setRefusesFirstResponder: objc.invokeSelector "setRefusesFirstResponder:"

  # Tracking the Mouse
  mouseDown: objc.invokeSelector "mouseDown:"
  ck.instanceProperty @, "ignoresMultiClick"

  # Control Editing Notifications
  controlTextDidBeginEditing: objc.invokeSelector "controlTextDidBeginEditing:"  # delegate method
  controlTextDidChange: objc.invokeSelector "controlTextDidChange:"  # delegate method
  controlTextDidEndEditing: objc.invokeSelector "controlTextDidEndEditing:"  # delegate method

  # Supporting Constraint-Based Layout
  invalidateIntrinsicContentSizeForCell: objc.invokeSelector "invalidateIntrinsicContentSizeForCell:"

class NSControlProxy extends foundation.NSObject
  @register()

  constructor: (fn) ->
                 super()
                 @fn = fn

  proxyAction: -> @fn()
  new ck.SelectorAttribute @::proxyAction, "action"
