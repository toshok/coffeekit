# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKTurnBasedMatch extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Retrieving Existing Matches
  @loadMatches: objc.invokeSelector ("loadMatchesWithCompletionHandler:")

  # Creating a New Match
  @findMatchForRequest: objc.invokeSelector ("findMatchForRequest:withCompletionHandler:")

  # Retrieving Information About the Match
  ck.addProperty @::, "creationDate"
  ck.addProperty @::, "currentParticipant"
  ck.addProperty @::, "matchID"
  ck.addProperty @::, "message"
  ck.addProperty @::, "participants"
  ck.addProperty @::, "status"
  ck.addProperty @::, "matchData"

  # Retrieving the Match’s Custom Data
  loadMatchData: objc.invokeSelector ("loadMatchDataWithCompletionHandler:")

  # Handling the Current Player’s Turn
  endTurn: objc.invokeSelector ("endTurnWithNextParticipant:matchData:completionHandler:")

  # Leaving a Match
  participantQuitInTurnWithOutcome: objc.invokeSelector ("participantQuitInTurnWithOutcome:nextParticipant:matchData:completionHandler:")
  participantQuitOutOfTurnWithOutcome: objc.invokeSelector ("participantQuitOutOfTurnWithOutcome:withCompletionHandler:")

  # Ending a Match
  endMatchInTurn: objc.invokeSelector ("endMatchInTurnWithMatchData:completionHandler:")

  # Deleting a Match From Game Center
  remove: objc.invokeSelector ("removeWithCompletionHandler:")

new ck.RegisterAttribute GKTurnBasedMatch, "GKTurnBasedMatch"
exports.GKTurnBasedMatch = GKTurnBasedMatch
