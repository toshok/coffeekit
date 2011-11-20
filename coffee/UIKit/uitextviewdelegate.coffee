# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextViewDelegate"
Protocol = foundation.Protocol

class UITextViewDelegate extends foundation.Protocol

  # Responding to Editing Notifications
  shouldBeginEditing: Protocol.optionalMethod "textViewShouldBeginEditing:"
  didBeginEditing:    Protocol.optionalMethod "textViewDidBeginEditing:"
  shouldEndEditing:   Protocol.optionalMethod "textViewShouldEndEditing:"
  didEndEditing:      Protocol.optionalMethod "textViewDidEndEditing:"

  # Responding to Text Changes
  shouldChangeText:   Protocol.optionalMethod "textView:shouldChangeTextInRange:replacementText:"
  didChangeText:      Protocol.optionalMethod "textViewDidChange:"

  # Responding to Selection Changes
  didChangeSelection: Protocol.optionalMethod "textViewDidChangeSelection:"

new ck.RegisterAttribute UITextViewDelegate, "UITextViewDelegate"
exports.UITextViewDelegate = UITextViewDelegate
