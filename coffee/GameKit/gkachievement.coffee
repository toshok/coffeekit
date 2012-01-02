# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKAchievement = class GKAchievement extends NSObject
  # Retrieving Achievement Progress from Game Center
  @loadAchievementsWithCompletionHandler: @nativeSelector "loadAchievementsWithCompletionHandler:"

  # Initializing an Achievement Object
  initWithIdentifier: @nativeSelector "initWithIdentifier:"

  # Configuring an Achievement
  @instanceProperty "identifier"
  @instanceProperty "percentComplete"

  # Reading the State of an Achievement
  @instanceProperty "completed"
  @instanceProperty "lastReportedDate"
  @instanceProperty "hidden"

  # Reporting Progress on an Achievement
  reportAchievement: @nativeSelector "reportAchievementWithCompletionHandler:"

  # Displaying a Notification Banner For an Achievement
  @instanceProperty "showsCompletionBanner"

  # Resetting the Player’s Progress on Achievements
  @resetAchievements: @nativeSelector "resetAchievementsWithCompletionHandler:"

  @register()
