# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIAccessibilityElement"
exports.UIAccessibilityElement = class UIAccessibilityElement extends foundation.NSObject
  # Creating an Accessibility Element
  initWithAccessibilityContainer: @nativeSelector "initWithAccessibilityContainer:"

  # Accessing the Containing View
  @instanceProperty "accessibilityContainer"

  # Determining Accessibility
  @instanceProperty "isAccessibilityElement"

  # Accessing the Attributes of an Accessibility Element
  @instanceProperty "accessibilityLabel"
  @instanceProperty "accessibilityHint"
  @instanceProperty "accessibilityValue"
  @instanceProperty "accessibilityFrame"
  @instanceProperty "accessibilityTraits"

  @register()
