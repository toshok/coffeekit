# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKSession = class GKSession extends foundation.NSObject
  @register()

  # Creating a Session
  init: objc.invokeSelector "initWithSessionID:displayName:sessionMode:"

  # Setting and Getting the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKSessionDelegate) }

  # Searching for Other Peers
  ck.instanceProperty @, "available"

  # Obtaining Information About Other Peers
  peersWithConnectionState: objc.invokeSelector "peersWithConnectionState:"
  displayNameForPeer: objc.invokeSelector "displayNameForPeer:"

  # Connecting to a Remote Peer
  connectToPeer: objc.invokeSelector "connectToPeer:withTimeout:"
  cancelConnectToPeer: objc.invokeSelector "cancelConnectToPeer:"

  # Receiving Connections from a Remote Peer
  acceptConnectionFromPeer: objc.invokeSelector "acceptConnectionFromPeer:error:"
  denyConnectionFromPeer: objc.invokeSelector "denyConnectionFromPeer:"

  # Working with Connected Peers
  setDataReceiveHandler: objc.invokeSelector "setDataReceiveHandler:withContext:"
  sendDataToPeers: objc.invokeSelector "sendData:toPeers:withDataMode:error:"
  sendDataToAllPeers: objc.invokeSelector "sendDataToAllPeers:withDataMode:error:"
  ck.instanceProperty @, "disconnectTimeout"
  disconnectFromAllPeers: objc.invokeSelector "disconnectFromAllPeers"
  disconnectPeerFromAllPeers: objc.invokeSelector "disconnectPeerFromAllPeers:"

  # Information About the Session
  ck.instanceProperty @, "displayName"
  ck.instanceProperty @, "peerID"
  ck.instanceProperty @, "sessionID"
  ck.instanceProperty @, "sessionMode"
