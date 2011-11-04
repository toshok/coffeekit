# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIAccessibilityElement"
class UIAccessibilityElement extends foundation.NSObject

  # Creating an Accessibility Element
  initWithAccessibilityContainer: objc.invokeSelector "initWithAccessibilityContainer:"

  # Accessing the Containing View
  ck.addProperty @::, "accessibilityContainer"

  # Determining Accessibility
  ck.addProperty @::, "isAccessibilityElement"

  # Accessing the Attributes of an Accessibility Element
  ck.addProperty @::, "accessibilityLabel"
  ck.addProperty @::, "accessibilityHint"
  ck.addProperty @::, "accessibilityValue"
  ck.addProperty @::, "accessibilityFrame"
  ck.addProperty @::, "accessibilityTraits"
 
new ck.RegisterAttribute UIAccessibilityElement, "UIAccessibilityElement"
exports.UIAccessibilityElement = UIAccessibilityElement
