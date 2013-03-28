# This file is part of coffeekit.  for licensing information, see the LICENSE file


ck.register exports.NSAlert = class NSAlert extends foundation.NSObject
  init: @nativeSelector "init"
  @alertWithError: @nativeSelector "alertWithError:"
  @alertWithMessageText: @nativeSelector "alertWithMessageText:defaultButton:alternateButton:otherButton:informativeTextWithFormat:"

  # Configuring Alerts
  #
  layout: @nativeSelector "layout"
  @instanceProperty "alertStyle" 
  @instanceProperty "accessoryView"
  @instanceProperty "showsHelp"
  @instanceProperty "helpAnchor"
  @instanceProperty "delegate"

  # Displaying Alerts
  #
  runModal: @nativeSelector "runModal"
  beginSheetModalForWindow: @nativeSelector "beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo"
  @instanceProperty "suppressionButton", { set: null } # read-only
  @instanceProperty "showsSuppressionButton"

  # Accessing Alert Text
  #
  @instanceProperty "informativeText"
  @instanceProperty "messageText"

  # Accesing Alert Icons
  #
  @instanceProperty "icon"

  # Accessing Alert Buttons
  #
  @instanceProperty "buttons", { set: null } # read-only
  addButtonWithTitle: @nativeSelector "addButtonWithTitle:"

  # Getting Alert Panels
  @instanceProperty "window", { set: null} # read-only
