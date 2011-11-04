#console.log "UIApplication"
class UIApplication extends UIResponder

  # Getting the Application Instance

  @sharedApplication: objc.invokeSelector "sharedApplication"

  # Setting and Getting the Delegate
  ck.addProperty @::, "delegate", set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIApplicationDelegate)

  # Getting Application Windows
  ck.addProperty @::, "keyWindow", { set: null } # readonly
  ck.addProperty @::, "windows", { set: null } # readonly

  # Controlling and Handling Events
  sendEvent: objc.invokeSelector "sendEvent:"
  sendAction: objc.invokeSelector "sendAction:to:from:forEvent:"
  beginIgnoringInteractionEvents: objc.invokeSelector "beginIgnoringInteractionEvents";
  endIgnoringInteractionEvents: objc.invokeSelector "endIgnoringInteractionEvents";

  ck.addProperty @::, "isIgnoringInteractionEvents", { set: null } # readonly

  ck.addProperty @::, "applicationSupportsShakeToEdit"
  ck.addProperty @::, "proximitySensingEnabled", { get: "isProximitySensingEnabled" } #  property Deprecated in iOS 3.0

  # Opening a URL Resource
  openURL: objc.invokeSelector "openURL:"
  canOpenURL: objc.invokeSelector "canOpenURL:"

  # Registering for Remote Notifications
  registerForRemoteNotificationTypes: objc.invokeSelector "registerForRemoteNotificationTypes:";
  unregisterForRemoteNotifications: objc.invokeSelector "unregisterForRemoteNotifications";
  enableRemoteNotificationTypes: objc.invokeSelector "enableRemoteNotificationTypes";

  # Managing Application Activity
  ck.addProperty @::, "idleTimerDisabled", { get: "isIdleTimerDisabled" }

  # Managing Background Execution
  ck.addProperty @::, "applicationState", { set: null } # readonly
  ck.addProperty @::, "backgroundTimeRemaining", { set: null }
  
  beginBackgroundTaskWithExpirationHandler: objc.invokeSelector "beginBackgroundTaskWithExpirationHandler:"
  endBackgroundTask: objc.invokeSelector "endBackgroundTask:"
  setKeepAliveTimeoutWithHandler: objc.invokeSelector "setKeepAliveTimeout:handler:"
  clearKeepAliveTimeout: objc.invokeSelector "clearKeepAliveTimeout";

  # Registering for Local Notifications
  scheduleLocalNotification: objc.invokeSelector "scheduleLocalNotification:"
  presentLocalNotificationNow: objc.invokeSelector "presentLocalNotificationNow:"
  cancelLocalNotification: objc.invokeSelector "cancelLocalNotification:"
  cancelAllLocalNotification: objc.invokeSelector "cancelAllLocalNotification:"

  ck.addProperty @::, "scheduledLocalNotifications"

  # Determining the Availability of Protected Content
  ck.addProperty @::, "protectedDataAvailable", { get: "isProtectedDataAvailable", set: null } # readonly

  # Registering for Remote Control Events
  beginReceivingRemoteControlEvents: objc.invokeSelector "beginReceivingRemoteControlEvents"
  endReceivingRemoteControlEvents: objc.invokeSelector "endReceivingRemoteControlEvents"

  # Managing Status Bar Orientation

  setStatusBarOrientation: objc.invokeSelector "setStatusBarOrientation:animated:"
  ck.addProperty @::, "statusBarOrientation", { set: (v) -> setStatusBarOrientation v, false }
  ck.addProperty @::, "statusBarOrientationAnimationDuration", { set: null } # readonly

  # Controlling Application Appearance
  setStatusBarHidden: objc.invokeSelector "setStatusBarHidden:withAnimation:"
  ck.addProperty @::, "statusBarHidden", { get: "isStatusBarHidden", set: (v) -> setStatusBarHidden v, false }

  setStatusBarStyle: objc.invokeSelector "setStatusBarStyle:withAnimation:"
  ck.addProperty @::, "statusBarStyle", { set: (v) -> setStatusBarStyle v, false }
  ck.addProperty @::, "statusBarFrame", { set: null }

  ck.addProperty @::, "networkActivityIndicatorVisible", { get: "isNetworkActivityIndicatorVisible" }
  ck.addProperty @::, "applicationIconBadgeNumber"
  ck.addProperty @::, "userInterfaceLayoutDirection", { set: null } # readonly

  # Setting the Icon of a Newsstand Application
  setNewsstandIconImage: objc.invokeSelector "setNewsstandIconImage:"

  @main: (args, delegateClassName) -> objc.UIApplicationMain args, delegateClassName

new ck.RegisterAttribute UIApplication, "UIApplication"
exports.UIApplication = UIApplication
