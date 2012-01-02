# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKTurnBasedMatch = class GKTurnBasedMatch extends foundation.NSObject
  # Retrieving Existing Matches
  @loadMatches: @nativeSelector "loadMatchesWithCompletionHandler:"

  # Creating a New Match
  @findMatchForRequest: @nativeSelector "findMatchForRequest:withCompletionHandler:"

  # Retrieving Information About the Match
  @instanceProperty "creationDate"
  @instanceProperty "currentParticipant"
  @instanceProperty "matchID"
  @instanceProperty "message"
  @instanceProperty "participants"
  @instanceProperty "status"
  @instanceProperty "matchData"

  # Retrieving the Match’s Custom Data
  loadMatchData: @nativeSelector "loadMatchDataWithCompletionHandler:"

  # Handling the Current Player’s Turn
  endTurn: @nativeSelector "endTurnWithNextParticipant:matchData:completionHandler:"

  # Leaving a Match
  participantQuitInTurnWithOutcome: @nativeSelector "participantQuitInTurnWithOutcome:nextParticipant:matchData:completionHandler:"
  participantQuitOutOfTurnWithOutcome: @nativeSelector "participantQuitOutOfTurnWithOutcome:withCompletionHandler:"

  # Ending a Match
  endMatchInTurn: @nativeSelector "endMatchInTurnWithMatchData:completionHandler:"

  # Deleting a Match From Game Center
  remove: @nativeSelector "removeWithCompletionHandler:"

  @register()
