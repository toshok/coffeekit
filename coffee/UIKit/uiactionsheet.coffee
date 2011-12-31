# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIActionSheet"
exports.UIActionSheet = class UIActionSheet extends UIView
  @register()

  # Creating Action Sheets
  init: objc.invokeSelector "initWithTitle:delegate:cancelButtonTitle:destructiveButtonTitle:otherButtonTitles:";

  # Setting Properties
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIActionSheetDelegate) }
  ck.instanceProperty @, "title"
  ck.instanceProperty @, "visible", { set: null, get: "isVisible" }
  ck.instanceProperty @, "property"

  # Configuring Buttons
  addButton: objc.invokeSelector "addButtonWithTitle:"
  ck.instanceProperty @, "numberOfButtons"
  buttonTitle: objc.invokeSelector "buttonTitleAtIndex:"
  ck.instanceProperty @, "cancelButtonIndex"
  ck.instanceProperty @, "destructiveButtonIndex"
  ck.instanceProperty @, "firstOtherButtonIndex"

  # Presenting the Action Sheet
    
  showFromTabBar: objc.invokeSelector "showFromTabBar:"
  showFromToolbar: objc.invokeSelector "showFromToolbar:"
  showInView: objc.invokeSelector "showInView:"
  showFromBarButtonItem: objc.invokeSelector "showFromBarButtonItem:animated:"
  showFromRect: objc.invokeSelector "showFromRect:inView:animated:"

  # Dismissing the Action Sheet
  dismissWithClickedButtonIndexAnimated: objc.invokeSelector "dismissWithClickedButtonIndex:animated:"
