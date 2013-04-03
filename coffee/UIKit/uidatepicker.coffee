# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIDatePicker"
exports.UIDatePicker = class UIDatePicker extends UIControl
  # Managing the Date and Calendar
  @instanceProperty  "calendar"
  @instanceProperty  "date", { set: (v) -> @setDate v, false }
  setDate:           @nativeSelector "setDate:animated:"
  @instanceProperty  "timeZone"
  @instanceProperty  "locale" # Deprecated in iOS 5.0

  # Configuring the Date Picker Mode
  @instanceProperty  "datePickerMode"

  # Configuring Temporal Attributes
  @instanceProperty  "maximumDate"
  @instanceProperty  "minimumDate"
  @instanceProperty  "minuteInterval"
  @instanceProperty  "countDownDuration"

  @register()
