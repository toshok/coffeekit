# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKAchievement extends NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Retrieving Achievement Progress from Game Center
  @loadAchievementsWithCompletionHandler: objc.invokeSelector ("loadAchievementsWithCompletionHandler:")

  # Initializing an Achievement Object
  initWithIdentifier: objc.invokeSelector ("initWithIdentifier:")

  # Configuring an Achievement
  ck.addProperty @::, "identifier"
  ck.addProperty @::, "percentComplete"

  # Reading the State of an Achievement
  ck.addProperty @::, "completed"
  ck.addProperty @::, "lastReportedDate"
  ck.addProperty @::, "hidden"

  # Reporting Progress on an Achievement
  reportAchievement: objc.invokeSelector ("reportAchievementWithCompletionHandler:")

  # Displaying a Notification Banner For an Achievement
  ck.addProperty @::, "showsCompletionBanner"

  # Resetting the Player’s Progress on Achievements
  @resetAchievements: objc.invokeSelector ("resetAchievementsWithCompletionHandler:")

new ck.RegisterAttribute GKAchievement, "GKAchievement"
exports.GKAchievement = GKAchievement
