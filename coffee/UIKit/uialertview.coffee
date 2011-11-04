console.log "UIAlertView"
class UIAlertView extends UIView

  constructor: (handle) -> super (if handle then handle else objc.allocInstance @.constructor.name)

  # Creating Alert Views
  init: objc.invokeSelector ("initWithTitle:message:delegate:cancelButtonTitle:otherButtonTitles:")

  # Setting Properties
  ck.addProperty @::, "delegate", set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIAlertViewDelegate)
  ck.addProperty @::, "alertViewStyle"
  ck.addProperty @::, "title"
  ck.addProperty @::, "message"
  ck.addProperty @::, "visible"

  # Configuring Buttons
  addButtonWithTitle: objc.invokeSelector ("addButtonWithTitle:")
  ck.addProperty @::, "numberOfButtons"
  buttonTitleAtIndex: objc.invokeSelector ("buttonTitleAtIndex:")
  textFieldAtIndex: objc.invokeSelector ("textFieldAtIndex:")
  ck.addProperty @::, "cancelButtonIndex"
  ck.addProperty @::, "firstOtherButtonIndex"

  # Displaying
  show: objc.invokeSelector ("show")

  # Dismissing
  dismissWithClickedButtonIndex: objc.invokeSelector ("dismissWithClickedButtonIndex:animated:")


new ck.RegisterAttribute UIAlertView, "UIAlertView"
exports.UIAlertView = UIAlertView
