# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKLeaderboard = class GKLeaderboard extends foundation.NSObject
  @register()

  # Determining the Available Leaderboards to Display
  @loadCategories: objc.invokeSelector "loadCategoriesWithCompletionHandler:"

  # Initialization
  init: objc.invokeSelector "init"
  initWithPlayerIDs: objc.invokeSelector "initWithPlayerIDs:"

  # Customizing the Leaderboard Request
  ck.instanceProperty @, "playerScope"
  ck.instanceProperty @, "range"
  ck.instanceProperty @, "timeScope"
  ck.instanceProperty @, "category"

  # Retrieving High Scores
  loadScores: objc.invokeSelector "loadScoresWithCompletionHandler:"
  ck.instanceProperty @, "loading"
  ck.instanceProperty @, "title"
  ck.instanceProperty @, "scores"
  ck.instanceProperty @, "localPlayerScore"
  ck.instanceProperty @, "maxRange"

  # Changing a Local Player’s Default Leaderboard
  @setDefaultLeaderboard: objc.invokeSelector "setDefaultLeaderboard:withCompletionHandler:"
