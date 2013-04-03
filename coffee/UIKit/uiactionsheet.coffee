# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIActionSheet"
exports.UIActionSheet = class UIActionSheet extends UIView
  # Creating Action Sheets
  init: @nativeSelector "initWithTitle:delegate:cancelButtonTitle:destructiveButtonTitle:otherButtonTitles:";

  # Setting Properties
  @autoboxProperty  "delegate", UIActionSheetDelegate
  @instanceProperty "title"
  @instanceProperty "visible", { set: null, get: "isVisible" }
  @instanceProperty "property"

  # Configuring Buttons
  addButton:        @nativeSelector "addButtonWithTitle:"
  buttonTitle:      @nativeSelector "buttonTitleAtIndex:"
  @instanceProperty "numberOfButtons"
  @instanceProperty "cancelButtonIndex"
  @instanceProperty "destructiveButtonIndex"
  @instanceProperty "firstOtherButtonIndex"

  # Presenting the Action Sheet
    
  showFromTabBar:        @nativeSelector "showFromTabBar:"
  showFromToolbar:       @nativeSelector "showFromToolbar:"
  showInView:            @nativeSelector "showInView:"
  showFromBarButtonItem: @nativeSelector "showFromBarButtonItem:animated:"
  showFromRect:          @nativeSelector "showFromRect:inView:animated:"

  # Dismissing the Action Sheet
  dismissWithClickedButtonIndexAnimated: @nativeSelector "dismissWithClickedButtonIndex:animated:"

  @register()
