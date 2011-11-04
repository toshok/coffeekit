#console.log "UIStepper"
class UIStepper extends UIControl

  # Configuring the Stepper
  ck.addProperty @::, "continuous"
  ck.addProperty @::, "autorepeat"
  ck.addProperty @::, "wraps"
  ck.addProperty @::, "minimumValue"
  ck.addProperty @::, "maximumValue"
  ck.addProperty @::, "stepValue"

  # Accessing the Stepper’s Value
  ck.addProperty @::, "value"

new ck.RegisterAttribute UIStepper, "UIStepper"
exports.UIStepper = UIStepper
