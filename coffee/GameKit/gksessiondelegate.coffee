# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKSessionDelegate"
Protocol = foundation.Protocol

class GKSessionDelegate extends foundation.Protocol

  # Observing Changes to Peers
  didChangeState: Protocol.requiredMethod ("session:peer:didChangeState:")

  # Connection Requests from Other Peers
  didReceiveConnectionRequestFromPeer: Protocol.requiredMethod ("session:didReceiveConnectionRequestFromPeer:")

  # Connection Errors
  connectionWithPeerFailed: Protocol.requiredMethod ("session:connectionWithPeerFailed:withError:")
  didFailWithError: Protocol.requiredMethod ("session:didFailWithError:")

new ck.RegisterAttribute GKSessionDelegate, "GKSessionDelegate"
exports.UIWebView = GKSessionDelegate
