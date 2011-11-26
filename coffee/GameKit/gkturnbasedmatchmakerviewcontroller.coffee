# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKTurnBasedMatchmakerViewController extends ui.UINavigationController
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Displaying a UI For Turn-Based Matches
  initWithMatchRequest:: objc.invokeSelector ("initWithMatchRequest:")
  ck.addProperty @::, "turnBasedMatchmakerDelegate", set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKTurnBasedMatchmakerViewControllerDelegate)
  ck.addProperty @::, "showExistingMatches"

new ck.RegisterAttribute GKTurnBasedMatchmakerViewController, "GKTurnBasedMatchmakerViewController"
exports.GKTurnBasedMatchmakerViewController = GKTurnBasedMatchmakerViewController
