#console.log "UIActionSheet"
class UIActionSheet extends UIView

  # Creating Action Sheets
  initWithTitle: objc.invokeSelector "initWithTitle:delegate:cancelButtonTitle:destructiveButtonTitle:otherButtonTitles:";

  # Setting Properties
  ck.addProperty @::, "delegate", set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIActionSheetDelegate)
  ck.addProperty @::, "title"
  ck.addProperty @::, "visible", { set: null, get: "isVisible" }
  ck.addProperty @::, "property"

  # Configuring Buttons
  addButtonWithTitle: objc.invokeSelector "addButtonWithTitle:"
  ck.addProperty @::, "numberOfButtons"
  buttonTitleAtIndex: objc.invokeSelector "buttonTitleAtIndex:"
  ck.addProperty @::, "cancelButtonIndex"
  ck.addProperty @::, "destructiveButtonIndex"
  ck.addProperty @::, "firstOtherButtonIndex"

  # Presenting the Action Sheet
    
  showFromTabBar: objc.invokeSelector "showFromTabBar:"
  showFromToolbar: objc.invokeSelector "showFromToolbar:"
  showInView: objc.invokeSelector "showInView:"
  showFromBarButtonItemAnimated: objc.invokeSelector "showFromBarButtonItem:animated:"
  showFromRect:inViewAnimated: objc.invokeSelector "showFromRect:inView:animated:"

  # Dismissing the Action Sheet
  dismissWithClickedButtonIndexAnimated: objc.invokeSelector "dismissWithClickedButtonIndex:animated:"

new ck.RegisterAttribute UIActionSheet, "UIActionSheet"
exports.UIActionSheet = UIActionSheet
