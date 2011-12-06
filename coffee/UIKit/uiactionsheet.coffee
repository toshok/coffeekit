# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIActionSheet"
class UIActionSheet extends UIView

  # Creating Action Sheets
  init: objc.invokeSelector "initWithTitle:delegate:cancelButtonTitle:destructiveButtonTitle:otherButtonTitles:";

  # Setting Properties
  ck.addProperty @::, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIActionSheetDelegate) }
  ck.addProperty @::, "title"
  ck.addProperty @::, "visible", { set: null, get: "isVisible" }
  ck.addProperty @::, "property"

  # Configuring Buttons
  addButton: objc.invokeSelector "addButtonWithTitle:"
  ck.addProperty @::, "numberOfButtons"
  buttonTitle: objc.invokeSelector "buttonTitleAtIndex:"
  ck.addProperty @::, "cancelButtonIndex"
  ck.addProperty @::, "destructiveButtonIndex"
  ck.addProperty @::, "firstOtherButtonIndex"

  # Presenting the Action Sheet
    
  showFromTabBar: objc.invokeSelector "showFromTabBar:"
  showFromToolbar: objc.invokeSelector "showFromToolbar:"
  showInView: objc.invokeSelector "showInView:"
  showFromBarButtonItem: objc.invokeSelector "showFromBarButtonItem:animated:"
  showFromRect: objc.invokeSelector "showFromRect:inView:animated:"

  # Dismissing the Action Sheet
  dismissWithClickedButtonIndexAnimated: objc.invokeSelector "dismissWithClickedButtonIndex:animated:"

new ck.RegisterAttribute UIActionSheet, "UIActionSheet"
exports.UIActionSheet = UIActionSheet
