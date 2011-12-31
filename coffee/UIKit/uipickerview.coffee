# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPickerView"
exports.UIPickerView = class UIPickerView extends UIView
  @register()

  # Getting the Dimensions of the View Picker
  ck.instanceProperty @, "numberOfComponents"
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
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIPickerViewDelegate) }

  # Specifying the Data Source
  ck.instanceProperty @, "dataSource"

  # Managing the Appearance of the Picker View
  ck.instanceProperty @, "showsSelectionIndicator"
