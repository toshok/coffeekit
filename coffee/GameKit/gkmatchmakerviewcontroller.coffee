# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKMatchmakerViewController = class GKMatchmakerViewController extends ui.UINavigationController
  @register()

  # Initializing a Matchmaker View Controller
  initWithInvite: objc.invokeSelector "initWithInvite:"
  initWithMatchRequest: objc.invokeSelector "initWithMatchRequest:"

  # Getting and Setting the Delegate
  ck.instanceProperty @, "matchmakerDelegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKMatchmakerViewControllerDelegate) }

  # Matchmaker View Controller Properties
  ck.instanceProperty @, "defaultInvitationMessage"
  ck.instanceProperty @, "hosted"
  ck.instanceProperty @, "matchRequest"

  # Adding Players to an Existing Match
  addPlayersToMatch: objc.invokeSelector "addPlayersToMatch:"

  # Implementing Hosted Matches
  setHostedPlayer: objc.invokeSelector "setHostedPlayer:connected:"
  setHostedPlayerReady: objc.invokeSelector "setHostedPlayerReady:" # Deprecated in iOS 5.0
