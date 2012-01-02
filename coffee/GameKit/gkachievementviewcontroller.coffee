# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKAchievementViewController = class GKAchievementViewController extends ui.UINavigationController
  # Setting the Delegate
  @autoboxProperty "achievementDelegate", GKAchievementViewControllerDelegate

  @register()
