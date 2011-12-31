# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKFriendRequestComposeViewController = class GKFriendRequestComposeViewController extends ui.UINavigationController
  @register()

  # Determining the Maximum Number of Recipients
  @maxNumberOfRecipients: objc.invokeSelector "maxNumberOfRecipients"

  # Delegate
  ck.instanceProperty @, "composeViewDelegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKFriendRequestComposeViewControllerDelegate) }

  # Adding Recipients
  addRecipientsWithEmailAddresses:: objc.invokeSelector "addRecipientsWithEmailAddresses:"
  addRecipientsWithPlayerIDs:: objc.invokeSelector "addRecipientsWithPlayerIDs:"

  # Setting an Invitation Message
  setMessage:: objc.invokeSelector "setMessage:"
