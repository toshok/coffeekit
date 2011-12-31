# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKTurnBasedMatchmakerViewController = class GKTurnBasedMatchmakerViewController extends ui.UINavigationController
  @register()

  # Displaying a UI For Turn-Based Matches
  initWithMatchRequest:: objc.invokeSelector "initWithMatchRequest:"
  ck.instanceProperty @, "turnBasedMatchmakerDelegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKTurnBasedMatchmakerViewControllerDelegate) }
  ck.instanceProperty @, "showExistingMatches"
