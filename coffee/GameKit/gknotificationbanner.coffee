# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKNotificationBanner = class GKNotificationBanner extends foundation.NSObject
  # Displaying a Notification Banner
  @showBanner: @nativeSelector "showBannerWithTitle:message:completionHandler:"

  @register()
