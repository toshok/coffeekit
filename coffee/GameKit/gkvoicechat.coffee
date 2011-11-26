# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKVoiceChat extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Determining Whether Voice Chat Is Available
  @isVoIPAllowed: objc.invokeSelector ("isVoIPAllowed")

  # Starting and Stopping Voice Chat
  start: objc.invokeSelector ("start")
  stop: objc.invokeSelector ("stop")

  # Transmitting to Other Players
  ck.addProperty @::, "active"

  # Receiving Updates About Other Participants
  ck.addProperty @::, "playerStateUpdateHandler"

  # Controlling Chat Volume
  setMute: objc.invokeSelector ("setMute:forPlayer:")
  ck.addProperty @::, "volume"

  # Channel Properties
  ck.addProperty @::, "name"
  ck.addProperty @::, "playerIDs"

new ck.RegisterAttribute GKVoiceChat, "GKVoiceChat"
exports.GKVoiceChat = GKVoiceChat
