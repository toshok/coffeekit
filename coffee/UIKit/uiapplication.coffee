# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIApplication"
exports.UIApplication = class UIApplication extends UIResponder
  # Getting the Application Instance

  @staticProperty "sharedApplication", set: null, get: -> objc.invokeSelector("sharedApplication").call UIApplication

  # Setting and Getting the Delegate
  @autoboxProperty "delegate", UIApplicationDelegate

  # Getting Application Windows
  @instanceProperty "keyWindow", { set: null } # readonly
  @instanceProperty "windows", { set: null } # readonly

  # Controlling and Handling Events
  sendEvent:                      @nativeSelector "sendEvent:"
  sendAction:                     @nativeSelector "sendAction:to:from:forEvent:"
  beginIgnoringInteractionEvents: @nativeSelector "beginIgnoringInteractionEvents";
  endIgnoringInteractionEvents:   @nativeSelector "endIgnoringInteractionEvents";

  @instanceProperty "isIgnoringInteractionEvents", { set: null } # readonly

  @instanceProperty "applicationSupportsShakeToEdit"
  @instanceProperty "proximitySensingEnabled", { get: "isProximitySensingEnabled" } #  property Deprecated in iOS 3.0

  # Opening a URL Resource
  openURL:    @nativeSelector "openURL:"
  canOpenURL: @nativeSelector "canOpenURL:"

  # Registering for Remote Notifications
  registerForRemoteNotificationTypes: @nativeSelector "registerForRemoteNotificationTypes:";
  unregisterForRemoteNotifications:   @nativeSelector "unregisterForRemoteNotifications";
  enableRemoteNotificationTypes:      @nativeSelector "enableRemoteNotificationTypes";

  # Managing Application Activity
  @instanceProperty "idleTimerDisabled", { get: "isIdleTimerDisabled" }

  # Managing Background Execution
  @instanceProperty "applicationState", { set: null } # readonly
  @instanceProperty "backgroundTimeRemaining", { set: null }
  
  beginBackgroundTaskWithExpirationHandler: @nativeSelector "beginBackgroundTaskWithExpirationHandler:"
  endBackgroundTask:                        @nativeSelector "endBackgroundTask:"
  setKeepAliveTimeoutWithHandler:           @nativeSelector "setKeepAliveTimeout:handler:"
  clearKeepAliveTimeout:                    @nativeSelector "clearKeepAliveTimeout";

  # Registering for Local Notifications
  scheduleLocalNotification:   @nativeSelector "scheduleLocalNotification:"
  presentLocalNotificationNow: @nativeSelector "presentLocalNotificationNow:"
  cancelLocalNotification:     @nativeSelector "cancelLocalNotification:"
  cancelAllLocalNotification:  @nativeSelector "cancelAllLocalNotification:"

  @instanceProperty "scheduledLocalNotifications"

  # Determining the Availability of Protected Content
  @instanceProperty "protectedDataAvailable", { get: "isProtectedDataAvailable", set: null } # readonly

  # Registering for Remote Control Events
  beginReceivingRemoteControlEvents: @nativeSelector "beginReceivingRemoteControlEvents"
  endReceivingRemoteControlEvents: @nativeSelector "endReceivingRemoteControlEvents"

  # Managing Status Bar Orientation

  setStatusBarOrientation: @nativeSelector "setStatusBarOrientation:animated:"
  @instanceProperty        "statusBarOrientation", { set: (v) -> @setStatusBarOrientation v, false }
  @instanceProperty        "statusBarOrientationAnimationDuration", { set: null } # readonly

  # Controlling Application Appearance
  setStatusBarHidden: @nativeSelector "setStatusBarHidden:withAnimation:"
  @instanceProperty   "statusBarHidden", { get: "isStatusBarHidden", set: (v) -> @setStatusBarHidden v, false }

  setStatusBarStyle: @nativeSelector "setStatusBarStyle:withAnimation:"
  @instanceProperty  "statusBarStyle", { set: (v) -> @setStatusBarStyle v, false }
  @instanceProperty  "statusBarFrame", { set: null }

  @instanceProperty "networkActivityIndicatorVisible", { get: "isNetworkActivityIndicatorVisible" }
  @instanceProperty "applicationIconBadgeNumber"
  @instanceProperty "userInterfaceLayoutDirection", { set: null } # readonly

  # Setting the Icon of a Newsstand Application
  setNewsstandIconImage: @nativeSelector "setNewsstandIconImage:"

  @main: (args, delegateClassName) -> objc.UIApplicationMain args, delegateClassName

  @register()
