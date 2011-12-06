# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKMatch extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Getting and Setting the Delegate
  ck.addProperty @::, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKMatchDelegate) }

  # Working with Other Players
  ck.addProperty @::, "playerIDs"
  ck.addProperty @::, "expectedPlayerCount"

  # Sending Data to Other Players
  sendDataToPlayers: objc.invokeSelector ("sendData:toPlayers:withDataMode:error:")
  sendDataToAllPlayers: objc.invokeSelector ("sendDataToAllPlayers:withDataMode:error:")

  # Joining a Voice Chat
  voiceChatWithName: objc.invokeSelector ("voiceChatWithName:")

  # Finishing the Match
  disconnect: objc.invokeSelector ("disconnect")

new ck.RegisterAttribute GKMatch, "GKMatch"
exports.GKMatch = GKMatch
