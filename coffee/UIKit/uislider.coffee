# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISlider"
exports.UISlider = class UISlider extends UIControl
  @register()

  # Accessing the Slider’s Value
  ck.instanceProperty @, "value", { set: (v) -> @setValue v, false }
  setValue: objc.invokeSelector "setValue:animated:"

  # Accessing the Slider’s Value Limits
  ck.instanceProperty @, "minimumValue"
  ck.instanceProperty @, "maximumValue"

  # Modifying the Slider’s Behavior
  ck.instanceProperty @, "continuous"

  # Changing the Slider’s Appearance
  ck.instanceProperty @, "minimumValueImage"
  ck.instanceProperty @, "maximumValueImage"
  ck.instanceProperty(@, "minimumTrackTintColor").makeUIAppearance()
  ck.instanceProperty @, "currentMinimumTrackImage"
  minimumTrackImage: objc.invokeSelector "minimumTrackImageForState:"
  setMinimumTrackImage: objc.invokeSelector "setMinimumTrackImage:forState:"
  ck.instanceProperty(@, "maximumTrackTintColor").makeUIAppearance()
  ck.instanceProperty @, "currentMaximumTrackImage"
  maximumTrackImage: objc.invokeSelector "maximumTrackImageForState:"
  setMaximumTrackImage: objc.invokeSelector "setMaximumTrackImage:forState:"
  ck.instanceProperty(@, "thumbTintColor").makeUIAppearance()
  ck.instanceProperty @, "currentThumbImage"
  thumbImage: objc.invokeSelector "thumbImageForState:"
  setThumbImage: objc.invokeSelector "setThumbImage:forState:"

  # Overrides for Subclasses
  maximumValueImageRect: objc.invokeSelector "maximumValueImageRectForBounds:"
  minimumValueImageRect: objc.invokeSelector "minimumValueImageRectForBounds:"
  trackRect: objc.invokeSelector "trackRectForBounds:"
  thumbRect: objc.invokeSelector "thumbRectForBounds:trackRect:value:"
