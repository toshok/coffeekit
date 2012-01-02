# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITextFieldDelegate"

exports.UITextFieldDelegate = class UITextFieldDelegate extends foundation.Protocol

  # Managing Editing
  shouldBeginEditing: @optionalMethod "textFieldShouldBeginEditing:"
  didBeginEditing:    @optionalMethod "textFieldDidBeginEditing:"
  shouldEndEditing:   @optionalMethod "textFieldShouldEndEditing:"
  didEndEditing:      @optionalMethod "textFieldDidEndEditing:"

  # Editing the Text Field’s Text
  shouldChangeCharactersInRange: @optionalMethod "textField:shouldChangeCharactersInRange:replacementString:"
  ShouldClear:                   @optionalMethod "textFieldShouldClear:"
  ShouldReturn:                  @optionalMethod "textFieldShouldReturn:"

  @register()