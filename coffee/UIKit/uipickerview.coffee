# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPickerView"
class UIPickerView extends UIView

  # Getting the Dimensions of the View Picker
  ck.addProperty @::, "numberOfComponents"
  numberOfRowsInComponent: objc.invokeSelector "numberOfRowsInComponent:"
  rowSizeForComponent: objc.invokeSelector "rowSizeForComponent:"

  # Reloading the View Picker
  reloadAllComponents: objc.invokeSelector "reloadAllComponents"
  reloadComponent: objc.invokeSelector "reloadComponent:"

  # Selecting Rows in the View Picker
  selectRow: objc.invokeSelector "selectRow:inComponent:animated:"
  selectedRow: objc.invokeSelector "selectedRowInComponent:"

  # Returning the View for a Row and Component
  viewForRowInComponent: objc.invokeSelector "viewForRow:forComponent:"

  # Specifying the Delegate
  ck.addProperty @::, "delegate"

  # Specifying the Data Source
  ck.addProperty @::, "dataSource"

  # Managing the Appearance of the Picker View
  ck.addProperty @::, "showsSelectionIndicator"

new ck.RegisterAttribute UIPickerView, "UIPickerView"
exports.UIPickerView = UIPickerView
