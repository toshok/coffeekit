# This file is part of coffeekit.  for licensing information, see the LICENSE file

class NSApplication extends foundation.NSResponder
  constructor: (handle) ->
    console.log "in NSApplication.ctor"
    super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Getting the Application
  # FIXME we need better syntax for this...
  this.__defineGetter__ "sharedApplication", ->
                             new NSApplication (objc.staticCall "NSApplication", "sharedApplication")


  # Configuring Applications
  applicationIconImage: objc.invokeSelector "applicationIconImage"
  setApplicationIconImage: objc.invokeSelector "setApplicationIconImage:"

  ck.addProperty @::, "delegate"

  # Launching Applications
  finishLaunching: objc.invokeSelector "finishLaunching"

  # Terminating Applications
  terminate: objc.invokeSelector "terminate:"
  replyToApplicationShouldTerminate: objc.invokeSelector "replyToApplicationShouldTerminate:"

  # Managing Active Status
  isActive: objc.invokeSelector "isActive"
  activateIgnoringOtherApps: objc.invokeSelector "activateIgnoringOtherApps:"
  deactivate: objc.invokeSelector "deactivate"

  # Hiding Applications
  hideOtherApplications: objc.invokeSelector "hideOtherApplications:"
  unhideAllApplications: objc.invokeSelector "unhideAllApplications:"

  # Managing the Event Loop
  isRunning: objc.invokeSelector "isRunning"
  run: objc.invokeSelector "run"
  stop: objc.invokeSelector "stop:"
  runModalForWindow: objc.invokeSelector "runModalForWindow:"
  stopModal: objc.invokeSelector "stopModal"
  stopModalWithCode: objc.invokeSelector "stopModalWithCode:"
  abortModal: objc.invokeSelector "abortModal"
  beginModalSessionForWindow: objc.invokeSelector "beginModalSessionForWindow:"
  runModalSession: objc.invokeSelector "runModalSession:"
  modalWindow: objc.invokeSelector "modalWindow"
  endModalSession: objc.invokeSelector "endModalSession:"
  sendEvent: objc.invokeSelector "sendEvent:"

  # Handling Events
  currentEvent: objc.invokeSelector "currentEvent"
  nextEvent: objc.invokeSelector "nextEventMatchingMask:untilDate:inMode:dequeue:"
  discardEvents: objc.invokeSelector "discardEventsMatchingMask:beforeEvent:"

  # Posting Events
  postEvent: objc.invokeSelector "postEvent:atStart:"

  # Managing Sheets
  beginSheet: objc.invokeSelector "beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:"
  endSheet: objc.invokeSelector "endSheet:"
  endSheetWithReturnCode: objc.invokeSelector "endSheet:returnCode:"

  # Managing Windows
  keyWindow: objc.invokeSelector "keyWindow"
  mainWindow: objc.invokeSelector "mainWindow"
  windowWithWindowNumber: objc.invokeSelector "windowWithWindowNumber:"
  windows: objc.invokeSelector "windows"
  makeWindowsPerform: objc.invokeSelector "makeWindowsPerform:inOrder:"

  # Minimizing Windows
  miniaturizeAll: objc.invokeSelector "miniaturizeAll:"

  # User Interface Layout Direction
  userInterfaceLayoutDirection: objc.invokeSelector "userInterfaceLayoutDirection"

  # Hiding Windows
  isHidden: objc.invokeSelector "isHidden"
  hide: objc.invokeSelector "hide:"
  unhide: objc.invokeSelector "unhide:"
  unhideWithoutActivation: objc.invokeSelector "unhideWithoutActivation"

  # Updating Windows
  updateWindows: objc.invokeSelector "updateWindows"
  setWindowsNeedUpdate: objc.invokeSelector "setWindowsNeedUpdate:"

  # Managing Window Layers
  preventWindowOrdering: objc.invokeSelector "preventWindowOrdering"
  arrangeInFront: objc.invokeSelector "arrangeInFront:"

  # Accessing the Main Menu
  mainMenu: objc.invokeSelector "mainMenu"
  setMainMenu: objc.invokeSelector "setMainMenu:"

  # Managing the Window Menu
  windowsMenu: objc.invokeSelector "windowsMenu"
  setWindowsMenu: objc.invokeSelector "setWindowsMenu:"
  addWindowsItem: objc.invokeSelector "addWindowsItem:title:filename:"
  changeWindowsItem: objc.invokeSelector "changeWindowsItem:title:filename:"
  removeWindowsItem: objc.invokeSelector "removeWindowsItem:"
  updateWindowsItem: objc.invokeSelector "updateWindowsItem:"

  # Accessing the Dock Tile
  dockTile: objc.invokeSelector "dockTile"

  # Managing the Services Menu
  registerServicesMenu: objc.invokeSelector "registerServicesMenuSendTypes:returnTypes:"
  servicesMenu: objc.invokeSelector "servicesMenu"
  setServicesMenu: objc.invokeSelector "setServicesMenu:"

  # Providing Services
  validRequestor: objc.invokeSelector "validRequestorForSendType:returnType:"
  servicesProvider: objc.invokeSelector "servicesProvider"
  setServicesProvider: objc.invokeSelector "setServicesProvider:"

  # Managing Panels
  orderFrontColorPanel: objc.invokeSelector "orderFrontColorPanel:"
  orderFrontStandardAboutPanel: objc.invokeSelector "orderFrontStandardAboutPanel:"
  orderFrontStandardAboutPanelWithOptions: objc.invokeSelector "orderFrontStandardAboutPanelWithOptions:"
  orderFrontCharacterPalette: objc.invokeSelector "orderFrontCharacterPalette:"
  runPageLayout: objc.invokeSelector "runPageLayout:"

  # Displaying Help
  showHelp: objc.invokeSelector "showHelp:"
  activateContextHelpMode: objc.invokeSelector "activateContextHelpMode:"
  helpMenu: objc.invokeSelector "helpMenu"
  setHelpMenu: objc.invokeSelector "setHelpMenu:"

  # Managing Threads
  detachDrawingThread: objc.invokeSelector "detachDrawingThread:toTarget:withObject:"

  # Posting Actions
  tryToPerform: objc.invokeSelector "tryToPerform:with:"
  sendAction: objc.invokeSelector "sendAction:to:from:"
  targetForAction: objc.invokeSelector "targetForAction:"
  targetForActionToFrom: objc.invokeSelector "targetForAction:to:from:"

  # Drawing Windows
  context: objc.invokeSelector "context"

  # Logging Exceptions
  reportException: objc.invokeSelector "reportException:"

  # Scripting
  # FIXME application:delegateHandlesKey:: objc.invokeSelector "application:delegateHandlesKey:" # delegate method
  orderedDocuments: objc.invokeSelector "orderedDocuments"
  orderedWindows: objc.invokeSelector "orderedWindows"

  # Managing User Attention Requests
  requestUserAttention: objc.invokeSelector "requestUserAttention:"
  cancelUserAttentionRequest: objc.invokeSelector "cancelUserAttentionRequest:"
  replyToOpenOrPrint: objc.invokeSelector "replyToOpenOrPrint:"

  # Keyboard Accessibility
  isFullKeyboardAccessEnabled: objc.invokeSelector "isFullKeyboardAccessEnabled"

  # Presentation Options
  currentSystemPresentationOptions: objc.invokeSelector "currentSystemPresentationOptions"
  presentationOptions: objc.invokeSelector "presentationOptions"
  setPresentationOptions: objc.invokeSelector "setPresentationOptions:"

  # Activation Policy
  activationPolicy: objc.invokeSelector "activationPolicy"
  setActivationPolicy: objc.invokeSelector "setActivationPolicy:"

  # Deprecated
  # FIXME
  #application:printFiles:: objc.invokeSelector "application:printFiles:"  # delegate method Available in Mac OS X v10.3 through Mac OS X v10.5
  #beginModalSessionForWindow:relativeToWindow:: objc.invokeSelector "beginModalSessionForWindow:relativeToWindow:" # Deprecated in Mac OS X v10.0
  #runModalForWindow:relativeToWindow:: objc.invokeSelector "runModalForWindow:relativeToWindow:" # Deprecated in Mac OS X v10.0

  # Spotlight for Help
  registerUserInterfaceItemSearchHandler: objc.invokeSelector "registerUserInterfaceItemSearchHandler:"
  unregisterUserInterfaceItemSearchHandler: objc.invokeSelector "unregisterUserInterfaceItemSearchHandler:"
  searchString: objc.invokeSelector "searchString:inUserInterfaceItemString:searchRange:foundRange:"

  # Managing Relaunch on Login
  disableRelaunchOnLogin: objc.invokeSelector "disableRelaunchOnLogin"
  enableRelaunchOnLogin: objc.invokeSelector "enableRelaunchOnLogin"

  # Managing Remote Notifications
  enabledRemoteNotificationTypes: objc.invokeSelector "enabledRemoteNotificationTypes"
  registerForRemoteNotificationTypes: objc.invokeSelector "registerForRemoteNotificationTypes:"
  unregisterForRemoteNotifications: objc.invokeSelector "unregisterForRemoteNotifications"

  # use this instead of NSApplicationMain
  @main: (args) -> objc.NSApplicationMain (args)

new ck.RegisterAttribute NSApplication, "NSApplication"
exports.NSApplication = NSApplication
