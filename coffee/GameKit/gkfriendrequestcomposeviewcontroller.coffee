# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKFriendRequestComposeViewController extends ui.UINavigationController
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Determining the Maximum Number of Recipients
  @maxNumberOfRecipients: objc.invokeSelector ("maxNumberOfRecipients")

  # Delegate
  ck.addProperty @::, "composeViewDelegate", set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKFriendRequestComposeViewControllerDelegate)

  # Adding Recipients
  addRecipientsWithEmailAddresses:: objc.invokeSelector ("addRecipientsWithEmailAddresses:")
  addRecipientsWithPlayerIDs:: objc.invokeSelector ("addRecipientsWithPlayerIDs:")

  # Setting an Invitation Message
  setMessage:: objc.invokeSelector ("setMessage:")

new ck.RegisterAttribute GKFriendRequestComposeViewController, "GKFriendRequestComposeViewController"
exports.GKFriendRequestComposeViewController = GKFriendRequestComposeViewController
