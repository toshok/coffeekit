# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKAchievementViewController = class GKAchievementViewController extends ui.UINavigationController
  @register()

  # Setting the Delegate
  ck.instanceProperty @, "achievementDelegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKAchievementViewControllerDelegate) }
