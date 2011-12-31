# This file is part of coffeekit.  for licensing information, see the LICENSE file


exports.NSAlert = class NSAlert extends foundation.NSObject
  @register()

  init: objc.invokeSelector "init"
  @alertWithError: objc.invokeSelector "alertWithError:"
  @alertWithMessageText: objc.invokeSelector "alertWithMessageText:defaultButton:alternateButton:otherButton:informativeTextWithFormat:"

  # Configuring Alerts
  #
  layout: objc.invokeSelector "layout"
  ck.instanceProperty @, "alertStyle" 
  ck.instanceProperty @, "accessoryView"
  ck.instanceProperty @, "showsHelp"
  ck.instanceProperty @, "helpAnchor"
  ck.instanceProperty @, "delegate"

  # Displaying Alerts
  #
  runModal: objc.invokeSelector "runModal"
  beginSheetModalForWindow: objc.invokeSelector "beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo"
  ck.instanceProperty @, "suppressionButton", { set: null } # read-only
  ck.instanceProperty @, "showsSuppressionButton"

  # Accessing Alert Text
  #
  ck.instanceProperty @, "informativeText"
  ck.instanceProperty @, "messageText"

  # Accesing Alert Icons
  #
  ck.instanceProperty @, "icon"

  # Accessing Alert Buttons
  #
  ck.instanceProperty @, "buttons", { set: null } # read-only
  addButtonWithTitle: objc.invokeSelector "addButtonWithTitle:"

  # Getting Alert Panels
  ck.instanceProperty @, "window", { set: null} # read-only
