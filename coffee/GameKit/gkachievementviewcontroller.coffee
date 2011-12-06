# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKAchievementViewController extends ui.UINavigationController
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Setting the Delegate
  ck.addProperty @::, "achievementDelegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKAchievementViewControllerDelegate) }

new ck.RegisterAttribute GKAchievementViewController, "GKAchievementViewController"
exports.GKAchievementViewController = GKAchievementViewController
