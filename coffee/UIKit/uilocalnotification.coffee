# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UILocalNotification"
class UILocalNotification extends foundation.NSObject

  # Scheduling a Local Notification
  ck.addProperty @::, "fireDate"
  ck.addProperty @::, "timeZone"
  ck.addProperty @::, "repeatInterval"
  ck.addProperty @::, "repeatCalendar"

  # Composing the Alert
  ck.addProperty @::, "alertBody"
  ck.addProperty @::, "alertAction"
  ck.addProperty @::, "hasAction"
  ck.addProperty @::, "alertLaunchImage"

  # Configuring Other Parts of the Notification
  ck.addProperty @::, "applicationIconBadgeNumber"
  ck.addProperty @::, "soundName"
  ck.addProperty @::, "userInfo"

new ck.RegisterAttribute UILocalNotification, "UILocalNotification"
exports.UILocalNotification = UILocalNotification
