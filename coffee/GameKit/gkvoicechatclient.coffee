# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKVoiceChatClient"

exports.GKVoiceChatClient = class GKVoiceChatClient extends foundation.Protocol
  # Getting Information About the Participant
  participantID:        @requiredMethod "participantID"

  # Sending Data to Other Participants
  sendData:             @requiredMethod "voiceChatService:sendData:toParticipantID:"
  sendRealTimeData:     @optionalMethod "voiceChatService:sendRealTimeData:toParticipantID:"

  # Accepting Invitations from Remote Participants
  didReceiveInvitation: @optionalMethod "voiceChatService:didReceiveInvitationFromParticipantID:callID:"

  # Responding to Changes in Other Participants
  didStart:             @optionalMethod "voiceChatService:didStartWithParticipantID:"
  didNotStart:          @optionalMethod "voiceChatService:didNotStartWithParticipantID:error:"
  didStop:              @optionalMethod "voiceChatService:didStopWithParticipantID:error:"

  @register()
