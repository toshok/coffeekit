# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSApplication = class NSApplication extends foundation.NSResponder
  # Getting the Application

  Object.defineProperty @, "sharedApplication", get: -> new NSApplication (objc.staticCall "NSApplication", "sharedApplication")

  # Configuring Applications
  applicationIconImage: @nativeSelector "applicationIconImage"
  setApplicationIconImage: @nativeSelector "setApplicationIconImage:"

  @autoboxProperty "delegate", NSApplicationDelegate

  # Launching Applications
  finishLaunching: @nativeSelector "finishLaunching"

  # Terminating Applications
  terminate: @nativeSelector "terminate:"
  replyToApplicationShouldTerminate: @nativeSelector "replyToApplicationShouldTerminate:"

  # Managing Active Status
  isActive: @nativeSelector "isActive"
  activateIgnoringOtherApps: @nativeSelector "activateIgnoringOtherApps:"
  deactivate: @nativeSelector "deactivate"

  # Hiding Applications
  hideOtherApplications: @nativeSelector "hideOtherApplications:"
  unhideAllApplications: @nativeSelector "unhideAllApplications:"

  # Managing the Event Loop
  isRunning: @nativeSelector "isRunning"
  run: @nativeSelector "run"
  stop: @nativeSelector "stop:"
  runModalForWindow: @nativeSelector "runModalForWindow:"
  stopModal: @nativeSelector "stopModal"
  stopModalWithCode: @nativeSelector "stopModalWithCode:"
  abortModal: @nativeSelector "abortModal"
  beginModalSessionForWindow: @nativeSelector "beginModalSessionForWindow:"
  runModalSession: @nativeSelector "runModalSession:"
  modalWindow: @nativeSelector "modalWindow"
  endModalSession: @nativeSelector "endModalSession:"
  sendEvent: @nativeSelector "sendEvent:"

  # Handling Events
  currentEvent: @nativeSelector "currentEvent"
  nextEvent: @nativeSelector "nextEventMatchingMask:untilDate:inMode:dequeue:"
  discardEvents: @nativeSelector "discardEventsMatchingMask:beforeEvent:"

  # Posting Events
  postEvent: @nativeSelector "postEvent:atStart:"

  # Managing Sheets
  beginSheet: @nativeSelector "beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:"
  endSheet: @nativeSelector "endSheet:"
  endSheetWithReturnCode: @nativeSelector "endSheet:returnCode:"

  # Managing Windows
  keyWindow: @nativeSelector "keyWindow"
  mainWindow: @nativeSelector "mainWindow"
  windowWithWindowNumber: @nativeSelector "windowWithWindowNumber:"
  windows: @nativeSelector "windows"
  makeWindowsPerform: @nativeSelector "makeWindowsPerform:inOrder:"

  # Minimizing Windows
  miniaturizeAll: @nativeSelector "miniaturizeAll:"

  # User Interface Layout Direction
  userInterfaceLayoutDirection: @nativeSelector "userInterfaceLayoutDirection"

  # Hiding Windows
  isHidden: @nativeSelector "isHidden"
  hide: @nativeSelector "hide:"
  unhide: @nativeSelector "unhide:"
  unhideWithoutActivation: @nativeSelector "unhideWithoutActivation"

  # Updating Windows
  updateWindows: @nativeSelector "updateWindows"
  setWindowsNeedUpdate: @nativeSelector "setWindowsNeedUpdate:"

  # Managing Window Layers
  preventWindowOrdering: @nativeSelector "preventWindowOrdering"
  arrangeInFront: @nativeSelector "arrangeInFront:"

  # Accessing the Main Menu
  mainMenu: @nativeSelector "mainMenu"
  setMainMenu: @nativeSelector "setMainMenu:"

  # Managing the Window Menu
  windowsMenu: @nativeSelector "windowsMenu"
  setWindowsMenu: @nativeSelector "setWindowsMenu:"
  addWindowsItem: @nativeSelector "addWindowsItem:title:filename:"
  changeWindowsItem: @nativeSelector "changeWindowsItem:title:filename:"
  removeWindowsItem: @nativeSelector "removeWindowsItem:"
  updateWindowsItem: @nativeSelector "updateWindowsItem:"

  # Accessing the Dock Tile
  dockTile: @nativeSelector "dockTile"

  # Managing the Services Menu
  registerServicesMenu: @nativeSelector "registerServicesMenuSendTypes:returnTypes:"
  servicesMenu: @nativeSelector "servicesMenu"
  setServicesMenu: @nativeSelector "setServicesMenu:"

  # Providing Services
  validRequestor: @nativeSelector "validRequestorForSendType:returnType:"
  servicesProvider: @nativeSelector "servicesProvider"
  setServicesProvider: @nativeSelector "setServicesProvider:"

  # Managing Panels
  orderFrontColorPanel: @nativeSelector "orderFrontColorPanel:"
  orderFrontStandardAboutPanel: @nativeSelector "orderFrontStandardAboutPanel:"
  orderFrontStandardAboutPanelWithOptions: @nativeSelector "orderFrontStandardAboutPanelWithOptions:"
  orderFrontCharacterPalette: @nativeSelector "orderFrontCharacterPalette:"
  runPageLayout: @nativeSelector "runPageLayout:"

  # Displaying Help
  showHelp: @nativeSelector "showHelp:"
  activateContextHelpMode: @nativeSelector "activateContextHelpMode:"
  helpMenu: @nativeSelector "helpMenu"
  setHelpMenu: @nativeSelector "setHelpMenu:"

  # Managing Threads
  detachDrawingThread: @nativeSelector "detachDrawingThread:toTarget:withObject:"

  # Posting Actions
  tryToPerform: @nativeSelector "tryToPerform:with:"
  sendAction: @nativeSelector "sendAction:to:from:"
  targetForAction: @nativeSelector "targetForAction:"
  targetForActionToFrom: @nativeSelector "targetForAction:to:from:"

  # Drawing Windows
  context: @nativeSelector "context"

  # Logging Exceptions
  reportException: @nativeSelector "reportException:"

  # Scripting
  # FIXME application:delegateHandlesKey:: @nativeSelector "application:delegateHandlesKey:" # delegate method
  orderedDocuments: @nativeSelector "orderedDocuments"
  orderedWindows: @nativeSelector "orderedWindows"

  # Managing User Attention Requests
  requestUserAttention: @nativeSelector "requestUserAttention:"
  cancelUserAttentionRequest: @nativeSelector "cancelUserAttentionRequest:"
  replyToOpenOrPrint: @nativeSelector "replyToOpenOrPrint:"

  # Keyboard Accessibility
  isFullKeyboardAccessEnabled: @nativeSelector "isFullKeyboardAccessEnabled"

  # Presentation Options
  currentSystemPresentationOptions: @nativeSelector "currentSystemPresentationOptions"
  presentationOptions: @nativeSelector "presentationOptions"
  setPresentationOptions: @nativeSelector "setPresentationOptions:"

  # Activation Policy
  activationPolicy: @nativeSelector "activationPolicy"
  setActivationPolicy: @nativeSelector "setActivationPolicy:"

  # Deprecated
  # FIXME
  #application:printFiles:: @nativeSelector "application:printFiles:"  # delegate method Available in Mac OS X v10.3 through Mac OS X v10.5
  #beginModalSessionForWindow:relativeToWindow:: @nativeSelector "beginModalSessionForWindow:relativeToWindow:" # Deprecated in Mac OS X v10.0
  #runModalForWindow:relativeToWindow:: @nativeSelector "runModalForWindow:relativeToWindow:" # Deprecated in Mac OS X v10.0

  # Spotlight for Help
  registerUserInterfaceItemSearchHandler: @nativeSelector "registerUserInterfaceItemSearchHandler:"
  unregisterUserInterfaceItemSearchHandler: @nativeSelector "unregisterUserInterfaceItemSearchHandler:"
  searchString: @nativeSelector "searchString:inUserInterfaceItemString:searchRange:foundRange:"

  # Managing Relaunch on Login
  disableRelaunchOnLogin: @nativeSelector "disableRelaunchOnLogin"
  enableRelaunchOnLogin: @nativeSelector "enableRelaunchOnLogin"

  # Managing Remote Notifications
  enabledRemoteNotificationTypes: @nativeSelector "enabledRemoteNotificationTypes"
  registerForRemoteNotificationTypes: @nativeSelector "registerForRemoteNotificationTypes:"
  unregisterForRemoteNotifications: @nativeSelector "unregisterForRemoteNotifications"

  # use this instead of NSApplicationMain
  @main: (args) -> objc.NSApplicationMain (args)

  @register()
