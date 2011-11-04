#console.log "UIDatePicker"
class UIDatePicker extends UIControl

  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Managing the Date and Calendar
  ck.addProperty @::, "calendar"
  ck.addProperty @::, "date", { set: (v) -> setDate v, false }
  setDate: objc.invokeSelector "setDate:animated:"
  ck.addProperty @::, "timeZone"
  ck.addProperty @::, "locale" # Deprecated in iOS 5.0

  # Configuring the Date Picker Mode
  ck.addProperty @::, "datePickerMode"

  # Configuring Temporal Attributes
  ck.addProperty @::, "maximumDate"
  ck.addProperty @::, "minimumDate"
  ck.addProperty @::, "minuteInterval"
  ck.addProperty @::, "countDownDuration"

new ck.RegisterAttribute UIDatePicker, "UIDatePicker"
exports.UIDatePicker = UIDatePicker
