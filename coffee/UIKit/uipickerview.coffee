# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIPickerView"
exports.UIPickerView = class UIPickerView extends UIView
  # Getting the Dimensions of the View Picker
  numberOfRowsInComponent: @nativeSelector "numberOfRowsInComponent:"
  rowSizeForComponent:     @nativeSelector "rowSizeForComponent:"
  @instanceProperty "numberOfComponents"

  # Reloading the View Picker
  reloadAllComponents:     @nativeSelector "reloadAllComponents"
  reloadComponent:         @nativeSelector "reloadComponent:"

  # Selecting Rows in the View Picker
  selectRow:               @nativeSelector "selectRow:inComponent:animated:"
  selectedRow:             @nativeSelector "selectedRowInComponent:"

  # Returning the View for a Row and Component
  viewForRowInComponent:   @nativeSelector "viewForRow:forComponent:"

  # Specifying the Delegate
  @autoboxProperty  "delegate", UIPickerViewDelegate

  # Specifying the Data Source
  @instanceProperty "dataSource"

  # Managing the Appearance of the Picker View
  @instanceProperty "showsSelectionIndicator"

  @register()
