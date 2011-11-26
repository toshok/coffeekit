# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKVoiceChatClient"
Protocol = foundation.Protocol

class GKVoiceChatClient extends foundation.Protocol

  # Getting Information About the Participant
  participantID:        Protocol.requiredMethod ("participantID")

  # Sending Data to Other Participants
  sendData:             Protocol.requiredMethod ("voiceChatService:sendData:toParticipantID:")
  sendRealTimeData:     Protocol.optionalMethod ("voiceChatService:sendRealTimeData:toParticipantID:")

  # Accepting Invitations from Remote Participants
  didReceiveInvitation: Protocol.optionalMethod ("voiceChatService:didReceiveInvitationFromParticipantID:callID:")

  # Responding to Changes in Other Participants
  didStart:             Protocol.optionalMethod ("voiceChatService:didStartWithParticipantID:")
  didNotStart:          Protocol.optionalMethod ("voiceChatService:didNotStartWithParticipantID:error:")
  didStop:              Protocol.optionalMethod ("voiceChatService:didStopWithParticipantID:error:")

new ck.RegisterAttribute GKVoiceChatClient, "GKVoiceChatClient"
exports.UIWebView = GKVoiceChatClient
