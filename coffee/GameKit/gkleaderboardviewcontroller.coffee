# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKLeaderboardViewController extends ui.UINavigationController
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Configuring the Leaderboard View Controller
  ck.addProperty @::, "category"
  ck.addProperty @::, "leaderboardDelegate", set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKLeaderboardViewControllerDelegate)
  ck.addProperty @::, "timeScope"

new ck.RegisterAttribute GKLeaderboardViewController, "GKLeaderboardViewController"
exports.GKLeaderboardViewController = GKLeaderboardViewController
