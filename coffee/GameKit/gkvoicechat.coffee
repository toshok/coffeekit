# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKVoiceChat = class GKVoiceChat extends foundation.NSObject
  @register()

  # Determining Whether Voice Chat Is Available
  @isVoIPAllowed: objc.invokeSelector "isVoIPAllowed"

  # Starting and Stopping Voice Chat
  start: objc.invokeSelector "start"
  stop: objc.invokeSelector "stop"

  # Transmitting to Other Players
  ck.instanceProperty @, "active"

  # Receiving Updates About Other Participants
  ck.instanceProperty @, "playerStateUpdateHandler"

  # Controlling Chat Volume
  setMute: objc.invokeSelector "setMute:forPlayer:"
  ck.instanceProperty @, "volume"

  # Channel Properties
  ck.instanceProperty @, "name"
  ck.instanceProperty @, "playerIDs"
