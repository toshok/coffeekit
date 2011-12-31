# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKScore = class GKScore extends foundation.NSObject
  @register()

  # Initializing a Score Object
  init: objc.invokeSelector "init"
  initWithCategory: objc.invokeSelector "initWithCategory:"

  # Score Properties
  ck.instanceProperty @, "playerID"
  ck.instanceProperty @, "category"
  ck.instanceProperty @, "date"
  ck.instanceProperty @, "value"
  ck.instanceProperty @, "context"
  ck.instanceProperty @, "formattedValue"
  ck.instanceProperty @, "rank"

  # Reporting a New Score
  reportScore: objc.invokeSelector "reportScoreWithCompletionHandler:"

  # Changing the Default Leaderboard
  ck.instanceProperty @, "shouldSetDefaultLeaderboard"
