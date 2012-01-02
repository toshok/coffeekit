# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKScore = class GKScore extends foundation.NSObject
  # Initializing a Score Object
  init: @nativeSelector "init"
  initWithCategory: @nativeSelector "initWithCategory:"

  # Score Properties
  @instanceProperty "playerID"
  @instanceProperty "category"
  @instanceProperty "date"
  @instanceProperty "value"
  @instanceProperty "context"
  @instanceProperty "formattedValue"
  @instanceProperty "rank"

  # Reporting a New Score
  reportScore: @nativeSelector "reportScoreWithCompletionHandler:"

  # Changing the Default Leaderboard
  @instanceProperty "shouldSetDefaultLeaderboard"

  @register()
