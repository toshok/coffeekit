# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPickerViewDelegate"

exports.UIPickerViewDelegate = class UIPickerViewDelegate extends foundation.Protocol

  # Setting the Dimensions of the Picker View
  rowHeightForComponent: @optionalMethod "pickerView:rowHeightForComponent:"
  widthForComponent:     @optionalMethod "pickerView:widthForComponent:"

  # Setting the Content of Component Rows

  # The methods in this group are marked @optional. However, to use a picker view, you must implement either the titleForRow or the viewForRow method to provide the content of component rows.

  titleForRow:           @optionalMethod "pickerView:titleForRow:forComponent:"
  viewForRow:            @optionalMethod "pickerView:viewForRow:forComponent:reusingView:"

  # Responding to Row Selection
  didSelectRow:          @optionalMethod "pickerView:didSelectRow:inComponent:"

  @register()