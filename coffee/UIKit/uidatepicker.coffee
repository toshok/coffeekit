# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIDatePicker"
exports.UIDatePicker = class UIDatePicker extends UIControl
  @register()

  # Managing the Date and Calendar
  ck.instanceProperty @, "calendar"
  ck.instanceProperty @, "date", { set: (v) -> @setDate v, false }
  setDate: objc.invokeSelector "setDate:animated:"
  ck.instanceProperty @, "timeZone"
  ck.instanceProperty @, "locale" # Deprecated in iOS 5.0

  # Configuring the Date Picker Mode
  ck.instanceProperty @, "datePickerMode"

  # Configuring Temporal Attributes
  ck.instanceProperty @, "maximumDate"
  ck.instanceProperty @, "minimumDate"
  ck.instanceProperty @, "minuteInterval"
  ck.instanceProperty @, "countDownDuration"
