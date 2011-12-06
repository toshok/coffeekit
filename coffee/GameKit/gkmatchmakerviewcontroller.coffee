# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKMatchmakerViewController extends ui.UINavigationController
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Initializing a Matchmaker View Controller
  initWithInvite: objc.invokeSelector ("initWithInvite:")
  initWithMatchRequest: objc.invokeSelector ("initWithMatchRequest:")

  # Getting and Setting the Delegate
  ck.addProperty @::, "matchmakerDelegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKMatchmakerViewControllerDelegate) }

  # Matchmaker View Controller Properties
  ck.addProperty @::, "defaultInvitationMessage"
  ck.addProperty @::, "hosted"
  ck.addProperty @::, "matchRequest"

  # Adding Players to an Existing Match
  addPlayersToMatch: objc.invokeSelector ("addPlayersToMatch:")

  # Implementing Hosted Matches
  setHostedPlayer: objc.invokeSelector ("setHostedPlayer:connected:")
  setHostedPlayerReady: objc.invokeSelector ("setHostedPlayerReady:") # Deprecated in iOS 5.0

new ck.RegisterAttribute GKMatchmakerViewController, "GKMatchmakerViewController"
exports.GKMatchmakerViewController = GKMatchmakerViewController
