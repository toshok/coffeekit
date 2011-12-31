# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UILocalNotification"
exports.UILocalNotification = class UILocalNotification extends foundation.NSObject
  @register()

  # Scheduling a Local Notification
  ck.instanceProperty @, "fireDate"
  ck.instanceProperty @, "timeZone"
  ck.instanceProperty @, "repeatInterval"
  ck.instanceProperty @, "repeatCalendar"

  # Composing the Alert
  ck.instanceProperty @, "alertBody"
  ck.instanceProperty @, "alertAction"
  ck.instanceProperty @, "hasAction"
  ck.instanceProperty @, "alertLaunchImage"

  # Configuring Other Parts of the Notification
  ck.instanceProperty @, "applicationIconBadgeNumber"
  ck.instanceProperty @, "soundName"
  ck.instanceProperty @, "userInfo"
