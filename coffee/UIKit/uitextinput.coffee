# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextInput"
Protocol = foundation.Protocol

class UITextInput extends foundation.Protocol

  # Replacing and Returning Text
  textInRange:  Protocol.requiredMethod "textInRange:"
  replaceRange: Protocol.requiredMethod "replaceRange:withText:"

  # Working with Marked and Selected Text
  selectedTextRange:          Protocol.requiredProperty "selectedTextRange"
  markedTextRange:            Protocol.requiredProperty "markedTextRange"
  markedTextStyle:            Protocol.requiredProperty "markedTextStyle"
  setMarkedTextSelectedRange: Protocol.requiredMethod "setMarkedText:selectedRange:"
  unmarkText:                 Protocol.requiredMethod "unmarkText"
  selectionAffinity:          Protocol.optionalMethod "selectionAffinity"

  # Computing Text Ranges and Text Positions
  textRangeFromPosition:           Protocol.requiredMethod "textRangeFromPosition:toPosition:"
  positionFromPosition:            Protocol.requiredMethod "positionFromPosition:offset:"
  positionFromPositionInDirection: Protocol.requiredMethod "positionFromPosition:inDirection:offset:"
  beginningOfDocument:             Protocol.requiredProperty "beginningOfDocument"
  endOfDocument:                   Protocol.requiredProperty "endOfDocument"

  # Evaluating Text Positions
  comparePosition:    Protocol.requiredMethod "comparePosition:toPosition:"
  offsetFromPosition: Protocol.requiredMethod "offsetFromPosition:toPosition:"

  # Determining Layout and Writing Direction
  positionWithinRange:               Protocol.optionalMethod "positionWithinRange:farthestInDirection:"
  characterRangeByExtendingPosition: Protocol.requiredMethod "characterRangeByExtendingPosition:inDirection:"
  baseWritingDirectionForPosition:   Protocol.requiredMethod "baseWritingDirectionForPosition:inDirection:"
  setBaseWritingDirection:           Protocol.requiredMethod "setBaseWritingDirection:forRange:"

  # Geometry and Hit-Testing Methods
  firstRectForRange:                 Protocol.requiredMethod "firstRectForRange:"
  caretRectForPosition:              Protocol.requiredMethod "caretRectForPosition:"
  closestPositionToPoint:            Protocol.requiredMethod "closestPositionToPoint:"
  closestPositionToPointWithinRange: Protocol.requiredMethod "closestPositionToPoint:withinRange:"
  characterRangeAtPoint:             Protocol.requiredMethod "characterRangeAtPoint:"

  # Text Input Delegate and Text Input Tokenizer
  inputDelegate: Protocol.requiredProperty "inputDelegate"
  tokenizer:     Protocol.requiredProperty "tokenizer"

  # Returning Text Styling Information
  textStylingAtPosition: Protocol.optionalMethod "textStylingAtPosition:inDirection:"

  # Reconciling Text Position and Character Offset
  positionWithinRange:       Protocol.optionalMethod "positionWithinRange:atCharacterOffset:"
  characterOffsetOfPosition: Protocol.optionalMethod "characterOffsetOfPosition:withinRange:"

  # Returning the Text Input View
  textInputView: Protocol.optionalMethod "textInputView"

new ck.MixinProtocolAttribute UITextInput, UIKeyInput
new ck.RegisterAttribute UITextInput, "UITextInput"
exports.UITextinput = UITextInput
