# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIAccessibilityElement"
exports.UIAccessibilityElement = class UIAccessibilityElement extends foundation.NSObject
  @register()

  # Creating an Accessibility Element
  initWithAccessibilityContainer: objc.invokeSelector "initWithAccessibilityContainer:"

  # Accessing the Containing View
  ck.instanceProperty @, "accessibilityContainer"

  # Determining Accessibility
  ck.instanceProperty @, "isAccessibilityElement"

  # Accessing the Attributes of an Accessibility Element
  ck.instanceProperty @, "accessibilityLabel"
  ck.instanceProperty @, "accessibilityHint"
  ck.instanceProperty @, "accessibilityValue"
  ck.instanceProperty @, "accessibilityFrame"
  ck.instanceProperty @, "accessibilityTraits"
