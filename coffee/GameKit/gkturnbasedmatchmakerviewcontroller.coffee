# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKTurnBasedMatchmakerViewController = class GKTurnBasedMatchmakerViewController extends ui.UINavigationController
  # Displaying a UI For Turn-Based Matches
  initWithMatchRequest:: @nativeSelector "initWithMatchRequest:"
  @autoboxProperty "turnBasedMatchmakerDelegate", GKTurnBasedMatchmakerViewControllerDelegate
  @instanceProperty "showExistingMatches"

  @register()
