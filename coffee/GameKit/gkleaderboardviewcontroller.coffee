# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKLeaderboardViewController = class GKLeaderboardViewController extends ui.UINavigationController
  # Configuring the Leaderboard View Controller
  @instanceProperty "category"
  @autoboxProperty "leaderboardDelegate", GKLeaderboardViewControllerDelegate
  @instanceProperty "timeScope"

  @register()
