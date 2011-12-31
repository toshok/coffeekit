# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIApplicationDelegate"
Protocol = foundation.Protocol

exports.UIApplicationDelegate = class UIApplicationDelegate extends foundation.Protocol
  @register()

  # Monitoring Application State Changes
  didFinishLaunching:              Protocol.optionalMethod "application:didFinishLaunchingWithOptions:"
  didBecomeActive:                 Protocol.optionalMethod "applicationDidBecomeActive:"
  willResignActive:                Protocol.optionalMethod "applicationWillResignActive:"
  didEnterBackground:              Protocol.optionalMethod "applicationDidEnterBackground:"
  willEnterForeground:             Protocol.optionalMethod "applicationWillEnterForeground:"
  willTerminate:                   Protocol.optionalMethod "applicationWillTerminate:"
  didFinishLaunching:              Protocol.optionalMethod "applicationDidFinishLaunching:"

  # Opening a URL Resource
  handleOpenURL:                   Protocol.optionalMethod "application:handleOpenURL:"
  openURL:                         Protocol.optionalMethod "application:openURL:sourceApplication:annotation:"

  # Managing Status Bar Changes
  willChangeStatusBarOrientation:  Protocol.optionalMethod "application:willChangeStatusBarOrientation:duration:"
  didChangeStatusBarOrientation:   Protocol.optionalMethod "application:didChangeStatusBarOrientation:"
  willChangeStatusBarFrame:        Protocol.optionalMethod "application:willChangeStatusBarFrame:"
  didChangeStatusBarFrame:         Protocol.optionalMethod "application:didChangeStatusBarFrame:"

  # Responding to System Notifications
  didReceiveMemoryWarning:         Protocol.optionalMethod "applicationDidReceiveMemoryWarning:"
  significantTimeChange:           Protocol.optionalMethod "applicationSignificantTimeChange:"

  # Handling Remote Notifications
  didReceiveRemoteNotification:                     Protocol.optionalMethod "application:didReceiveRemoteNotification:"
  didRegisterForRemoveNotificationsWithDeviceToken: Protocol.optionalMethod "application:didRegisterForRemoteNotificationsWithDeviceToken:"
  didFailToRegisterForRemoteNotifications:          Protocol.optionalMethod "application:didFailToRegisterForRemoteNotificationsWithError:"

  # Handling Local Notifications
  didReceiveLocalNotification:     Protocol.optionalMethod "application:didReceiveLocalNotification:"

  # Responding to Content Protection Changes
  protectedDataWillBecomeUnavailable: Protocol.optionalMethod "applicationProtectedDataWillBecomeUnavailable:"
  protectedDataDidBecomeAvailable:    Protocol.optionalMethod "applicationProtectedDataDidBecomeAvailable:"

  # Providing a Window for Storyboarding
  #window  property
