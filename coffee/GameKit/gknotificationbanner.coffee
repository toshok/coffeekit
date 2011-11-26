# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKNotificationBanner extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Displaying a Notification Banner
  @showBanner: objc.invokeSelector ("showBannerWithTitle:message:completionHandler:")

new ck.RegisterAttribute GKNotificationBanner, "GKNotificationBanner"
exports.GKNotificationBanner = GKNotificationBanner
