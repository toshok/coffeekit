# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKSession extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Creating a Session
  init: objc.invokeSelector ("initWithSessionID:displayName:sessionMode:")

  # Setting and Getting the Delegate
  ck.addProperty @::, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKSessionDelegate) }

  # Searching for Other Peers
  ck.addProperty @::, "available"

  # Obtaining Information About Other Peers
  peersWithConnectionState: objc.invokeSelector ("peersWithConnectionState:")
  displayNameForPeer: objc.invokeSelector ("displayNameForPeer:")

  # Connecting to a Remote Peer
  connectToPeer: objc.invokeSelector ("connectToPeer:withTimeout:")
  cancelConnectToPeer: objc.invokeSelector ("cancelConnectToPeer:")

  # Receiving Connections from a Remote Peer
  acceptConnectionFromPeer: objc.invokeSelector ("acceptConnectionFromPeer:error:")
  denyConnectionFromPeer: objc.invokeSelector ("denyConnectionFromPeer:")

  # Working with Connected Peers
  setDataReceiveHandler: objc.invokeSelector ("setDataReceiveHandler:withContext:")
  sendDataToPeers: objc.invokeSelector ("sendData:toPeers:withDataMode:error:")
  sendDataToAllPeers: objc.invokeSelector ("sendDataToAllPeers:withDataMode:error:")
  ck.addProperty @::, "disconnectTimeout"
  disconnectFromAllPeers: objc.invokeSelector ("disconnectFromAllPeers")
  disconnectPeerFromAllPeers: objc.invokeSelector ("disconnectPeerFromAllPeers:")

  # Information About the Session
  ck.addProperty @::, "displayName"
  ck.addProperty @::, "peerID"
  ck.addProperty @::, "sessionID"
  ck.addProperty @::, "sessionMode"

new ck.RegisterAttribute GKSession, "GKSession"
exports.GKSession = GKSession
