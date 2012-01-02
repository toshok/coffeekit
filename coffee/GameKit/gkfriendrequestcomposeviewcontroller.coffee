# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKFriendRequestComposeViewController = class GKFriendRequestComposeViewController extends ui.UINavigationController
  # Determining the Maximum Number of Recipients
  @maxNumberOfRecipients: @nativeSelector "maxNumberOfRecipients"

  # Delegate
  @autoboxProperty "composeViewDelegate", GKFriendRequestComposeViewControllerDelegate

  # Adding Recipients
  addRecipientsWithEmailAddresses:: @nativeSelector "addRecipientsWithEmailAddresses:"
  addRecipientsWithPlayerIDs:: @nativeSelector "addRecipientsWithPlayerIDs:"

  # Setting an Invitation Message
  setMessage:: @nativeSelector "setMessage:"

  @register()
