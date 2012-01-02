# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKMatchmakerViewController = class GKMatchmakerViewController extends ui.UINavigationController
  # Initializing a Matchmaker View Controller
  initWithInvite: @nativeSelector "initWithInvite:"
  initWithMatchRequest: @nativeSelector "initWithMatchRequest:"

  # Getting and Setting the Delegate
  @autoboxProperty "matchmakerDelegate", GKMatchmakerViewControllerDelegate

  # Matchmaker View Controller Properties
  @instanceProperty "defaultInvitationMessage"
  @instanceProperty "hosted"
  @instanceProperty "matchRequest"

  # Adding Players to an Existing Match
  addPlayersToMatch: @nativeSelector "addPlayersToMatch:"

  # Implementing Hosted Matches
  setHostedPlayer: @nativeSelector "setHostedPlayer:connected:"
  setHostedPlayerReady: @nativeSelector "setHostedPlayerReady:" # Deprecated in iOS 5.0

  @register()
