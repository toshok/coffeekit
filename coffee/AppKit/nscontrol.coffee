# This file is part of coffeekit.  for licensing information, see the LICENSE file

class NSControl extends NSView
  constructor: (handle) ->
    super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Initializing an NSControl
  initWithFrame: objc.invokeSelector "initWithFrame:"

  # Setting the Control’s Cell
  ck.addProperty @::, "cellClass"
  ck.addProperty @::, "cell"

  # Enabling and Disabling the Control
  ck.addProperty @::, "enabled", { get: "isEnabled" }

  # Identifying the Selected Cell
  selectedCell: objc.invokeSelector "selectedCell"
  selectedTag: objc.invokeSelector "selectedTag"

  # Setting the Control’s Value
  ck.addProperty @::, "doubleValue"
  ck.addProperty @::, "floatValue"
  ck.addProperty @::, "intValue"
  ck.addProperty @::, "integerValue"
  ck.addProperty @::, "objectValue"
  ck.addProperty @::, "stringValue"
  ck.addProperty @::, "attributedStringValue"
  setNeedsDisplay: objc.invokeSelector "setNeedsDisplay"

  # Interacting with Other Controls
  takeDoubleValueFrom: objc.invokeSelector "takeDoubleValueFrom:"
  takeFloatValueFrom: objc.invokeSelector "takeFloatValueFrom:"
  takeIntValueFrom: objc.invokeSelector "takeIntValueFrom:"
  takeIntegerValueFrom: objc.invokeSelector "takeIntegerValueFrom:"
  takeObjectValueFrom: objc.invokeSelector "takeObjectValueFrom:"
  takeStringValueFrom: objc.invokeSelector "takeStringValueFrom:"

  # Formatting Text
  ck.addProperty @::, "alignment"
  ck.addProperty @::, "font"
  ck.addProperty @::, "formatter"
  ck.addProperty @::, "baseWritingDirection"
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
  ck.addProperty @::, "action"
  ck.addProperty @::, "target"
  ck.addProperty @::, "continuous", { get: "isContinuous" }
  sendActionTo: objc.invokeSelector "sendAction:to:"
  sendActionOn: objc.invokeSelector "sendActionOn:"

  # Getting and Setting Tags
  ck.addProperty @::, "tag"

  # Activating from the Keyboard
  performClick: objc.invokeSelector "performClick:"
  refusesFirstResponder: objc.invokeSelector "refusesFirstResponder"
  setRefusesFirstResponder: objc.invokeSelector "setRefusesFirstResponder:"

  # Tracking the Mouse
  mouseDown: objc.invokeSelector "mouseDown:"
  ck.addProperty @::, "ignoresMultiClick"

  # Control Editing Notifications
  controlTextDidBeginEditing: objc.invokeSelector "controlTextDidBeginEditing:"  # delegate method
  controlTextDidChange: objc.invokeSelector "controlTextDidChange:"  # delegate method
  controlTextDidEndEditing: objc.invokeSelector "controlTextDidEndEditing:"  # delegate method

  # Supporting Constraint-Based Layout
  invalidateIntrinsicContentSizeForCell: objc.invokeSelector "invalidateIntrinsicContentSizeForCell:"

new ck.RegisterAttribute NSControl, "NSControl"
exports.NSControl = NSControl

class NSControlProxy extends foundation.NSObject
  constructor: (fn) ->
                 super (objc.allocInstance(@.constructor.name))
                 @fn = fn

  toString: -> "[NSControlProxy #{@handle}]"

  proxyAction: -> @fn()
  new ck.SelectorAttribute @::proxyAction, "action"
new ck.RegisterAttribute NSControlProxy, "NSControlProxy"
