# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKPeerPickerControllerDelegate"

exports.UIWebView = class GKPeerPickerControllerDelegate extends foundation.Protocol
  # Creating a Session for the Peer Picker
  didSelectConnectionType:  @optionalMethod "peerPickerController:didSelectConnectionType:"
  sessionForConnectionType: @optionalMethod "peerPickerController:sessionForConnectionType:"

  # Responding to Connection Messages
  didConnectPeer:           @optionalMethod "peerPickerController:didConnectPeer:toSession:"

  # Responding When the User Cancels the Connection Attempt
  didCancel:                @optionalMethod "peerPickerControllerDidCancel:"

  @register()
