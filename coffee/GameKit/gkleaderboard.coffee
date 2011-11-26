# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKLeaderboard extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Determining the Available Leaderboards to Display
  @loadCategories: objc.invokeSelector ("loadCategoriesWithCompletionHandler:")

  # Initialization
  init: objc.invokeSelector ("init")
  initWithPlayerIDs: objc.invokeSelector ("initWithPlayerIDs:")

  # Customizing the Leaderboard Request
  ck.addProperty @::, "playerScope"
  ck.addProperty @::, "range"
  ck.addProperty @::, "timeScope"
  ck.addProperty @::, "category"

  # Retrieving High Scores
  loadScores: objc.invokeSelector ("loadScoresWithCompletionHandler:")
  ck.addProperty @::, "loading"
  ck.addProperty @::, "title"
  ck.addProperty @::, "scores"
  ck.addProperty @::, "localPlayerScore"
  ck.addProperty @::, "maxRange"

  # Changing a Local Player’s Default Leaderboard
  @setDefaultLeaderboard: objc.invokeSelector ("setDefaultLeaderboard:withCompletionHandler:")

new ck.RegisterAttribute GKLeaderboard, "GKLeaderboard"
exports.GKLeaderboard = GKLeaderboard
