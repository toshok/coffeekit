# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKScore extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Initializing a Score Object
  init: objc.invokeSelector ("init")
  initWithCategory: objc.invokeSelector ("initWithCategory:")

  # Score Properties
  ck.addProperty @::, "playerID"
  ck.addProperty @::, "category"
  ck.addProperty @::, "date"
  ck.addProperty @::, "value"
  ck.addProperty @::, "context"
  ck.addProperty @::, "formattedValue"
  ck.addProperty @::, "rank"

  # Reporting a New Score
  reportScore: objc.invokeSelector ("reportScoreWithCompletionHandler:")

  # Changing the Default Leaderboard
  ck.addProperty @::, "shouldSetDefaultLeaderboard"

new ck.RegisterAttribute GKScore, "GKScore"
exports.GKScore = GKScore
