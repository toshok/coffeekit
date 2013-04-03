# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIApplicationDelegate"

exports.UIApplicationDelegate = class UIApplicationDelegate extends foundation.Protocol
  # Monitoring Application State Changes
  didFinishLaunchingWithOptions:   @optionalMethod("application:didFinishLaunchingWithOptions:", sig: "v@:@@")
  didBecomeActive:                 @optionalMethod "applicationDidBecomeActive:"
  willResignActive:                @optionalMethod "applicationWillResignActive:"
  didEnterBackground:              @optionalMethod "applicationDidEnterBackground:"
  willEnterForeground:             @optionalMethod "applicationWillEnterForeground:"
  willTerminate:                   @optionalMethod "applicationWillTerminate:"
  didFinishLaunching:              @optionalMethod("applicationDidFinishLaunching:", sig: "v@:@")

  # Opening a URL Resource
  handleOpenURL:                   @optionalMethod "application:handleOpenURL:"
  openURL:                         @optionalMethod "application:openURL:sourceApplication:annotation:"

  # Managing Status Bar Changes
  willChangeStatusBarOrientation:  @optionalMethod "application:willChangeStatusBarOrientation:duration:"
  didChangeStatusBarOrientation:   @optionalMethod "application:didChangeStatusBarOrientation:"
  willChangeStatusBarFrame:        @optionalMethod "application:willChangeStatusBarFrame:"
  didChangeStatusBarFrame:         @optionalMethod "application:didChangeStatusBarFrame:"

  # Responding to System Notifications
  didReceiveMemoryWarning:         @optionalMethod "applicationDidReceiveMemoryWarning:"
  significantTimeChange:           @optionalMethod "applicationSignificantTimeChange:"

  # Handling Remote Notifications
  didReceiveRemoteNotification:                     @optionalMethod "application:didReceiveRemoteNotification:"
  didRegisterForRemoveNotificationsWithDeviceToken: @optionalMethod "application:didRegisterForRemoteNotificationsWithDeviceToken:"
  didFailToRegisterForRemoteNotifications:          @optionalMethod "application:didFailToRegisterForRemoteNotificationsWithError:"

  # Handling Local Notifications
  didReceiveLocalNotification:     @optionalMethod "application:didReceiveLocalNotification:"

  # Responding to Content Protection Changes
  protectedDataWillBecomeUnavailable: @optionalMethod "applicationProtectedDataWillBecomeUnavailable:"
  protectedDataDidBecomeAvailable:    @optionalMethod "applicationProtectedDataDidBecomeAvailable:"

  # Providing a Window for Storyboarding
  #window  property

  @register()
