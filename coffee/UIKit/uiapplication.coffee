# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIApplication"
exports.UIApplication = class UIApplication extends UIResponder
  @register()

  # Getting the Application Instance

  ck.staticProperty @, "sharedApplication", set: null, get: -> objc.invokeSelector("sharedApplication").call UIApplication

  # Setting and Getting the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIApplicationDelegate) }

  # Getting Application Windows
  ck.instanceProperty @, "keyWindow", { set: null } # readonly
  ck.instanceProperty @, "windows", { set: null } # readonly

  # Controlling and Handling Events
  sendEvent: objc.invokeSelector "sendEvent:"
  sendAction: objc.invokeSelector "sendAction:to:from:forEvent:"
  beginIgnoringInteractionEvents: objc.invokeSelector "beginIgnoringInteractionEvents";
  endIgnoringInteractionEvents: objc.invokeSelector "endIgnoringInteractionEvents";

  ck.instanceProperty @, "isIgnoringInteractionEvents", { set: null } # readonly

  ck.instanceProperty @, "applicationSupportsShakeToEdit"
  ck.instanceProperty @, "proximitySensingEnabled", { get: "isProximitySensingEnabled" } #  property Deprecated in iOS 3.0

  # Opening a URL Resource
  openURL: objc.invokeSelector "openURL:"
  canOpenURL: objc.invokeSelector "canOpenURL:"

  # Registering for Remote Notifications
  registerForRemoteNotificationTypes: objc.invokeSelector "registerForRemoteNotificationTypes:";
  unregisterForRemoteNotifications: objc.invokeSelector "unregisterForRemoteNotifications";
  enableRemoteNotificationTypes: objc.invokeSelector "enableRemoteNotificationTypes";

  # Managing Application Activity
  ck.instanceProperty @, "idleTimerDisabled", { get: "isIdleTimerDisabled" }

  # Managing Background Execution
  ck.instanceProperty @, "applicationState", { set: null } # readonly
  ck.instanceProperty @, "backgroundTimeRemaining", { set: null }
  
  beginBackgroundTaskWithExpirationHandler: objc.invokeSelector "beginBackgroundTaskWithExpirationHandler:"
  endBackgroundTask: objc.invokeSelector "endBackgroundTask:"
  setKeepAliveTimeoutWithHandler: objc.invokeSelector "setKeepAliveTimeout:handler:"
  clearKeepAliveTimeout: objc.invokeSelector "clearKeepAliveTimeout";

  # Registering for Local Notifications
  scheduleLocalNotification: objc.invokeSelector "scheduleLocalNotification:"
  presentLocalNotificationNow: objc.invokeSelector "presentLocalNotificationNow:"
  cancelLocalNotification: objc.invokeSelector "cancelLocalNotification:"
  cancelAllLocalNotification: objc.invokeSelector "cancelAllLocalNotification:"

  ck.instanceProperty @, "scheduledLocalNotifications"

  # Determining the Availability of Protected Content
  ck.instanceProperty @, "protectedDataAvailable", { get: "isProtectedDataAvailable", set: null } # readonly

  # Registering for Remote Control Events
  beginReceivingRemoteControlEvents: objc.invokeSelector "beginReceivingRemoteControlEvents"
  endReceivingRemoteControlEvents: objc.invokeSelector "endReceivingRemoteControlEvents"

  # Managing Status Bar Orientation

  setStatusBarOrientation: objc.invokeSelector "setStatusBarOrientation:animated:"
  ck.instanceProperty @, "statusBarOrientation", { set: (v) -> @setStatusBarOrientation v, false }
  ck.instanceProperty @, "statusBarOrientationAnimationDuration", { set: null } # readonly

  # Controlling Application Appearance
  setStatusBarHidden: objc.invokeSelector "setStatusBarHidden:withAnimation:"
  ck.instanceProperty @, "statusBarHidden", { get: "isStatusBarHidden", set: (v) -> @setStatusBarHidden v, false }

  setStatusBarStyle: objc.invokeSelector "setStatusBarStyle:withAnimation:"
  ck.instanceProperty @, "statusBarStyle", { set: (v) -> @setStatusBarStyle v, false }
  ck.instanceProperty @, "statusBarFrame", { set: null }

  ck.instanceProperty @, "networkActivityIndicatorVisible", { get: "isNetworkActivityIndicatorVisible" }
  ck.instanceProperty @, "applicationIconBadgeNumber"
  ck.instanceProperty @, "userInterfaceLayoutDirection", { set: null } # readonly

  # Setting the Icon of a Newsstand Application
  setNewsstandIconImage: objc.invokeSelector "setNewsstandIconImage:"

  @main: (args, delegateClassName) -> objc.UIApplicationMain args, delegateClassName
