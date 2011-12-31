# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKVoiceChatService = class GKVoiceChatService extends foundation.NSObject
  @register()

  # Determining Whether Voice Chat Is Available
  @isVoIPAllowed: objc.invokeSelector "isVoIPAllowed"

  # Getting the Shared Voice Chat Service
  @defaultVoiceChatService: objc.invokeSelector "defaultVoiceChatService"

  # Setting the Client
  ck.instanceProperty @, "client"

  # Establishing a Voice Chat
  startVoiceChatWithParticipantID:error:: objc.invokeSelector "startVoiceChatWithParticipantID:error:"

  # Adjusting Audio Properties
  ck.instanceProperty @, "microphoneMuted"
  ck.instanceProperty @, "remoteParticipantVolume"

  # Monitoring the Audio Level
  ck.instanceProperty @, "inputMeteringEnabled"
  ck.instanceProperty @, "inputMeterLevel"
  ck.instanceProperty @, "outputMeteringEnabled"
  ck.instanceProperty @, "outputMeterLevel"

  # Ending a Voice Chat
  stopVoiceChatWithParticipantID:: objc.invokeSelector "stopVoiceChatWithParticipantID:"

  # Methods Called by the Client
  acceptCallID:error:: objc.invokeSelector "acceptCallID:error:"
  denyCallID:: objc.invokeSelector "denyCallID:"
  receivedData:fromParticipantID:: objc.invokeSelector "receivedData:fromParticipantID:"
  receivedRealTimeData:fromParticipantID:: objc.invokeSelector "receivedRealTimeData:fromParticipantID:"
