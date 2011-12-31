# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKNotificationBanner = class GKNotificationBanner extends foundation.NSObject
  @register()

  # Displaying a Notification Banner
  @showBanner: objc.invokeSelector "showBannerWithTitle:message:completionHandler:"
