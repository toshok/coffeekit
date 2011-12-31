# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKTurnBasedMatch = class GKTurnBasedMatch extends foundation.NSObject
  @register()

  # Retrieving Existing Matches
  @loadMatches: objc.invokeSelector "loadMatchesWithCompletionHandler:"

  # Creating a New Match
  @findMatchForRequest: objc.invokeSelector "findMatchForRequest:withCompletionHandler:"

  # Retrieving Information About the Match
  ck.instanceProperty @, "creationDate"
  ck.instanceProperty @, "currentParticipant"
  ck.instanceProperty @, "matchID"
  ck.instanceProperty @, "message"
  ck.instanceProperty @, "participants"
  ck.instanceProperty @, "status"
  ck.instanceProperty @, "matchData"

  # Retrieving the Match’s Custom Data
  loadMatchData: objc.invokeSelector "loadMatchDataWithCompletionHandler:"

  # Handling the Current Player’s Turn
  endTurn: objc.invokeSelector "endTurnWithNextParticipant:matchData:completionHandler:"

  # Leaving a Match
  participantQuitInTurnWithOutcome: objc.invokeSelector "participantQuitInTurnWithOutcome:nextParticipant:matchData:completionHandler:"
  participantQuitOutOfTurnWithOutcome: objc.invokeSelector "participantQuitOutOfTurnWithOutcome:withCompletionHandler:"

  # Ending a Match
  endMatchInTurn: objc.invokeSelector "endMatchInTurnWithMatchData:completionHandler:"

  # Deleting a Match From Game Center
  remove: objc.invokeSelector "removeWithCompletionHandler:"
