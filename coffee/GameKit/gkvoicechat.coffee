# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKVoiceChat = class GKVoiceChat extends foundation.NSObject
  # Determining Whether Voice Chat Is Available
  @isVoIPAllowed: @nativeSelector "isVoIPAllowed"

  # Starting and Stopping Voice Chat
  start: @nativeSelector "start"
  stop: @nativeSelector "stop"

  # Transmitting to Other Players
  @instanceProperty "active"

  # Receiving Updates About Other Participants
  @instanceProperty "playerStateUpdateHandler"

  # Controlling Chat Volume
  setMute: @nativeSelector "setMute:forPlayer:"
  @instanceProperty "volume"

  # Channel Properties
  @instanceProperty "name"
  @instanceProperty "playerIDs"

  @register()
