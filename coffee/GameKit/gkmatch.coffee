# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKMatch = class GKMatch extends foundation.NSObject
  @register()

  # Getting and Setting the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKMatchDelegate) }

  # Working with Other Players
  ck.instanceProperty @, "playerIDs"
  ck.instanceProperty @, "expectedPlayerCount"

  # Sending Data to Other Players
  sendDataToPlayers: objc.invokeSelector "sendData:toPlayers:withDataMode:error:"
  sendDataToAllPlayers: objc.invokeSelector "sendDataToAllPlayers:withDataMode:error:"

  # Joining a Voice Chat
  voiceChatWithName: objc.invokeSelector "voiceChatWithName:"

  # Finishing the Match
  disconnect: objc.invokeSelector "disconnect"
