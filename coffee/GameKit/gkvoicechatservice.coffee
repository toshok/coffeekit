# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKVoiceChatService = class GKVoiceChatService extends foundation.NSObject
  # Determining Whether Voice Chat Is Available
  @isVoIPAllowed: @nativeSelector "isVoIPAllowed"

  # Getting the Shared Voice Chat Service
  @defaultVoiceChatService: @nativeSelector "defaultVoiceChatService"

  # Setting the Client
  @instanceProperty "client"

  # Establishing a Voice Chat
  startVoiceChatWithParticipantID:error:: @nativeSelector "startVoiceChatWithParticipantID:error:"

  # Adjusting Audio Properties
  @instanceProperty "microphoneMuted"
  @instanceProperty "remoteParticipantVolume"

  # Monitoring the Audio Level
  @instanceProperty "inputMeteringEnabled"
  @instanceProperty "inputMeterLevel"
  @instanceProperty "outputMeteringEnabled"
  @instanceProperty "outputMeterLevel"

  # Ending a Voice Chat
  stopVoiceChatWithParticipantID:: @nativeSelector "stopVoiceChatWithParticipantID:"

  # Methods Called by the Client
  acceptCallID:error:: @nativeSelector "acceptCallID:error:"
  denyCallID:: @nativeSelector "denyCallID:"
  receivedData:fromParticipantID:: @nativeSelector "receivedData:fromParticipantID:"
  receivedRealTimeData:fromParticipantID:: @nativeSelector "receivedRealTimeData:fromParticipantID:"

  @register()
