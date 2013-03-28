# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "NSApplicationDelegate"

exports.NSApplicationDelegate = class NSApplicationDelegate extends foundation.Protocol

  # Launching Applications
  willFinishLaunching: @optionalMethod "applicationWillFinishLaunching:", sig: "v@:@"
  didFinishLaunching: @optionalMethod "applicationDidFinishLaunching:", sig: "v@:@"

  # Terminating Applications
  shouldTerminate: @optionalMethod "applicationShouldTerminate:"
  shouldTerminateAfterLastWindowClosed: @optionalMethod "applicationShouldTerminateAfterLastWindowClosed:"
  willTerminate: @optionalMethod "applicationWillTerminate:"

  # Managing Active Status
  willBecomeActive: @optionalMethod "applicationWillBecomeActive:"
  didBecomeActive: @optionalMethod "applicationDidBecomeActive:"
  willResignActive: @optionalMethod "applicationWillResignActive:"
  didResignActive: @optionalMethod "applicationDidResignActive:"

  # Hiding Applications
  willHide: @optionalMethod "applicationWillHide:"
  didHide: @optionalMethod "applicationDidHide:"
  willUnhide: @optionalMethod "applicationWillUnhide:"
  didUnhide: @optionalMethod "applicationDidUnhide:"

  # Managing Windows
  willUpdate: @optionalMethod "applicationWillUpdate:"
  didUpdate: @optionalMethod "applicationDidUpdate:"
  shouldHandleReopen: @optionalMethod "applicationShouldHandleReopen:hasVisibleWindows:"

  # Managing the Dock Menu
  dockMenu: @optionalMethod "applicationDockMenu:"

  # Displaying Errors
  willPresentError: @optionalMethod "application:willPresentError:"

  # Managing the Screen
  didChangeScreenParameters: @optionalMethod "applicationDidChangeScreenParameters:"

  # Opening Files
  openFile: @optionalMethod "application:openFile:"
  openFileWithoutUI: @optionalMethod "application:openFileWithoutUI:"
  openTempFile: @optionalMethod "application:openTempFile:"
  openFiles: @optionalMethod "application:openFiles:"
  openUntitledFile: @optionalMethod "applicationOpenUntitledFile:"
  shouldOpenUntitledFile: @optionalMethod "applicationShouldOpenUntitledFile:"

  # Printing
  printFile: @optionalMethod "application:printFile:"
  printFilesWithSettings: @optionalMethod "application:printFiles:withSettings:showPrintPanels:"

  # Handling Push Notifications
  didRegisterForRemoteNotificationsWithDeviceToken: @optionalMethod "application:didRegisterForRemoteNotificationsWithDeviceToken:"
  didFailToRegisterForRemoteNotificationsWithError: @optionalMethod "application:didFailToRegisterForRemoteNotificationsWithError:"
  didReceiveRemoteNotification: @optionalMethod "application:didReceiveRemoteNotification:"

  # Application Restorable State
  didDecodeRestorableState: @optionalMethod "application:didDecodeRestorableState:"
  willEncodeRestorableState: @optionalMethod "application:willEncodeRestorableState:"

ck.RegisterAttribute NSApplicationDelegate
