# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKPeerPickerControllerDelegate"
Protocol = foundation.Protocol

class GKPeerPickerControllerDelegate extends foundation.Protocol

  # Creating a Session for the Peer Picker
  didSelectConnectionType: Protocol.optionalMethod ("peerPickerController:didSelectConnectionType:")
  sessionForConnectionType: Protocol.optionalMethod ("peerPickerController:sessionForConnectionType:")

  # Responding to Connection Messages
  didConnectPeer: Protocol.optionalMethod ("peerPickerController:didConnectPeer:toSession:")

  # Responding When the User Cancels the Connection Attempt
  didCancel: Protocol.optionalMethod ("peerPickerControllerDidCancel:")

new ck.RegisterAttribute GKPeerPickerControllerDelegate, "GKPeerPickerControllerDelegate"
exports.UIWebView = GKPeerPickerControllerDelegate
