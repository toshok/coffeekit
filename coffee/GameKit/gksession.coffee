# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKSession = class GKSession extends foundation.NSObject
  # Creating a Session
  init: @nativeSelector "initWithSessionID:displayName:sessionMode:"

  # Setting and Getting the Delegate
  @autoboxProperty "delegate", GKSessionDelegate

  # Searching for Other Peers
  @instanceProperty "available"

  # Obtaining Information About Other Peers
  peersWithConnectionState: @nativeSelector "peersWithConnectionState:"
  displayNameForPeer: @nativeSelector "displayNameForPeer:"

  # Connecting to a Remote Peer
  connectToPeer: @nativeSelector "connectToPeer:withTimeout:"
  cancelConnectToPeer: @nativeSelector "cancelConnectToPeer:"

  # Receiving Connections from a Remote Peer
  acceptConnectionFromPeer: @nativeSelector "acceptConnectionFromPeer:error:"
  denyConnectionFromPeer: @nativeSelector "denyConnectionFromPeer:"

  # Working with Connected Peers
  setDataReceiveHandler: @nativeSelector "setDataReceiveHandler:withContext:"
  sendDataToPeers: @nativeSelector "sendData:toPeers:withDataMode:error:"
  sendDataToAllPeers: @nativeSelector "sendDataToAllPeers:withDataMode:error:"
  @instanceProperty "disconnectTimeout"
  disconnectFromAllPeers: @nativeSelector "disconnectFromAllPeers"
  disconnectPeerFromAllPeers: @nativeSelector "disconnectPeerFromAllPeers:"

  # Information About the Session
  @instanceProperty "displayName"
  @instanceProperty "peerID"
  @instanceProperty "sessionID"
  @instanceProperty "sessionMode"

  @register()
