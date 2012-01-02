# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIStepper"
exports.UIStepper = class UIStepper extends UIControl
  # Configuring the Stepper
  @instanceProperty "continuous"
  @instanceProperty "autorepeat"
  @instanceProperty "wraps"
  @instanceProperty "minimumValue"
  @instanceProperty "maximumValue"
  @instanceProperty "stepValue"

  # Accessing the Stepper’s Value
  @instanceProperty "value"

  @register()
