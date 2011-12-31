# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKAchievement = class GKAchievement extends NSObject
  @register()

  # Retrieving Achievement Progress from Game Center
  @loadAchievementsWithCompletionHandler: objc.invokeSelector "loadAchievementsWithCompletionHandler:"

  # Initializing an Achievement Object
  initWithIdentifier: objc.invokeSelector "initWithIdentifier:"

  # Configuring an Achievement
  ck.instanceProperty @, "identifier"
  ck.instanceProperty @, "percentComplete"

  # Reading the State of an Achievement
  ck.instanceProperty @, "completed"
  ck.instanceProperty @, "lastReportedDate"
  ck.instanceProperty @, "hidden"

  # Reporting Progress on an Achievement
  reportAchievement: objc.invokeSelector "reportAchievementWithCompletionHandler:"

  # Displaying a Notification Banner For an Achievement
  ck.instanceProperty @, "showsCompletionBanner"

  # Resetting the Player’s Progress on Achievements
  @resetAchievements: objc.invokeSelector "resetAchievementsWithCompletionHandler:"
