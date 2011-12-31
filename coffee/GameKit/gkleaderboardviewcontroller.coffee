# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKLeaderboardViewController = class GKLeaderboardViewController extends ui.UINavigationController
  @register()

  # Configuring the Leaderboard View Controller
  ck.instanceProperty @, "category"
  ck.instanceProperty @, "leaderboardDelegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKLeaderboardViewControllerDelegate) }
  ck.instanceProperty @, "timeScope"
