# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UILocalNotification"
exports.UILocalNotification = class UILocalNotification extends foundation.NSObject
  # Scheduling a Local Notification
  @instanceProperty "fireDate"
  @instanceProperty "timeZone"
  @instanceProperty "repeatInterval"
  @instanceProperty "repeatCalendar"

  # Composing the Alert
  @instanceProperty "alertBody"
  @instanceProperty "alertAction"
  @instanceProperty "hasAction"
  @instanceProperty "alertLaunchImage"

  # Configuring Other Parts of the Notification
  @instanceProperty "applicationIconBadgeNumber"
  @instanceProperty "soundName"
  @instanceProperty "userInfo"

  @register()
