# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKMatch = class GKMatch extends foundation.NSObject
  # Getting and Setting the Delegate
  @autoboxProperty "delegate", GKMatchDelegate

  # Working with Other Players
  @instanceProperty "playerIDs"
  @instanceProperty "expectedPlayerCount"

  # Sending Data to Other Players
  sendDataToPlayers: @nativeSelector "sendData:toPlayers:withDataMode:error:"
  sendDataToAllPlayers: @nativeSelector "sendDataToAllPlayers:withDataMode:error:"

  # Joining a Voice Chat
  voiceChatWithName: @nativeSelector "voiceChatWithName:"

  # Finishing the Match
  disconnect: @nativeSelector "disconnect"

  @register()
