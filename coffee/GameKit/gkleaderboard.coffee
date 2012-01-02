# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKLeaderboard = class GKLeaderboard extends foundation.NSObject
  # Determining the Available Leaderboards to Display
  @loadCategories: @nativeSelector "loadCategoriesWithCompletionHandler:"

  # Initialization
  init: @nativeSelector "init"
  initWithPlayerIDs: @nativeSelector "initWithPlayerIDs:"

  # Customizing the Leaderboard Request
  @instanceProperty "playerScope"
  @instanceProperty "range"
  @instanceProperty "timeScope"
  @instanceProperty "category"

  # Retrieving High Scores
  loadScores: @nativeSelector "loadScoresWithCompletionHandler:"
  @instanceProperty "loading"
  @instanceProperty "title"
  @instanceProperty "scores"
  @instanceProperty "localPlayerScore"
  @instanceProperty "maxRange"

  # Changing a Local Player’s Default Leaderboard
  @setDefaultLeaderboard: @nativeSelector "setDefaultLeaderboard:withCompletionHandler:"

  @register()
