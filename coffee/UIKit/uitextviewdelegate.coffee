# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextViewDelegate"
Protocol = foundation.Protocol

exports.UITextViewDelegate = class UITextViewDelegate extends foundation.Protocol
  @register()

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
