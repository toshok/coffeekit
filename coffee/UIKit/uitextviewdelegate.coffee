# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UITextViewDelegate"

exports.UITextViewDelegate = class UITextViewDelegate extends foundation.Protocol
  # Responding to Editing Notifications
  shouldBeginEditing: @optionalMethod "textViewShouldBeginEditing:"
  didBeginEditing:    @optionalMethod "textViewDidBeginEditing:"
  shouldEndEditing:   @optionalMethod "textViewShouldEndEditing:"
  didEndEditing:      @optionalMethod "textViewDidEndEditing:"

  # Responding to Text Changes
  shouldChangeText:   @optionalMethod "textView:shouldChangeTextInRange:replacementText:"
  didChangeText:      @optionalMethod "textViewDidChange:"

  # Responding to Selection Changes
  didChangeSelection: @optionalMethod "textViewDidChangeSelection:"

  @register()
