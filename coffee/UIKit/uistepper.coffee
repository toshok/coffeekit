# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIStepper"
exports.UIStepper = class UIStepper extends UIControl
  @register()

  # Configuring the Stepper
  ck.instanceProperty @, "continuous"
  ck.instanceProperty @, "autorepeat"
  ck.instanceProperty @, "wraps"
  ck.instanceProperty @, "minimumValue"
  ck.instanceProperty @, "maximumValue"
  ck.instanceProperty @, "stepValue"

  # Accessing the Stepper’s Value
  ck.instanceProperty @, "value"
