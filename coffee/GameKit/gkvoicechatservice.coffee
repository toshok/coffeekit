# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKVoiceChatService extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Determining Whether Voice Chat Is Available
  @isVoIPAllowed: objc.invokeSelector ("isVoIPAllowed")

  # Getting the Shared Voice Chat Service
  @defaultVoiceChatService: objc.invokeSelector ("defaultVoiceChatService")

  # Setting the Client
  ck.addProperty @::, "client"

  # Establishing a Voice Chat
  startVoiceChatWithParticipantID:error:: objc.invokeSelector ("startVoiceChatWithParticipantID:error:")

  # Adjusting Audio Properties
  ck.addProperty @::, "microphoneMuted"
  ck.addProperty @::, "remoteParticipantVolume"

  # Monitoring the Audio Level
  ck.addProperty @::, "inputMeteringEnabled"
  ck.addProperty @::, "inputMeterLevel"
  ck.addProperty @::, "outputMeteringEnabled"
  ck.addProperty @::, "outputMeterLevel"

  # Ending a Voice Chat
  stopVoiceChatWithParticipantID:: objc.invokeSelector ("stopVoiceChatWithParticipantID:")

  # Methods Called by the Client
  acceptCallID:error:: objc.invokeSelector ("acceptCallID:error:")
  denyCallID:: objc.invokeSelector ("denyCallID:")
  receivedData:fromParticipantID:: objc.invokeSelector ("receivedData:fromParticipantID:")
  receivedRealTimeData:fromParticipantID:: objc.invokeSelector ("receivedRealTimeData:fromParticipantID:")

new ck.RegisterAttribute GKVoiceChatService, "GKVoiceChatService"
exports.GKVoiceChatService = GKVoiceChatService
