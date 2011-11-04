
class NSAlert extends foundation.NSObject
  constructor: (handle) ->
    super (if handle then handle else objc.allocInstance (@.constructor.name))

  init: objc.invokeSelector ("init")
  @alertWithError: objc.invokeSelector ("alertWithError:")
  @alertWithMessageText: objc.invokeSelector ("alertWithMessageText:defaultButton:alternateButton:otherButton:informativeTextWithFormat:")

  # Configuring Alerts
  #
  layout: objc.invokeSelector ("layout")
  ck.addProperty @::, "alertStyle" 
  ck.addProperty @::, "accessoryView"
  ck.addProperty @::, "showsHelp"
  ck.addProperty @::, "helpAnchor"
  ck.addProperty @::, "delegate"

  # Displaying Alerts
  #
  runModal: objc.invokeSelector ("runModal")
  beginSheetModalForWindow: objc.invokeSelector ("beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo")
  ck.addProperty @::, "suppressionButton", { set: null } # read-only
  ck.addProperty @::, "showsSuppressionButton"

  # Accessing Alert Text
  #
  ck.addProperty @::, "informativeText"
  ck.addProperty @::, "messageText"

  # Accesing Alert Icons
  #
  ck.addProperty @::, "icon"

  # Accessing Alert Buttons
  #
  ck.addProperty @::, "buttons", { set: null } # read-only
  addButtonWithTitle: objc.invokeSelector ("addButtonWithTitle:")

  # Getting Alert Panels
  ck.addProperty @::, "window", { set: null} # read-only

  toString: -> "[NSAlert #{@handle}]"
new ck.RegisterAttribute NSAlert, "NSAlert"
exports.NSAlert = NSAlert
