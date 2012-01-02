# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISlider"
exports.UISlider = class UISlider extends UIControl
  # Accessing the Slider’s Value
  @instanceProperty "value", { set: (v) -> @setValue v, false }
  setValue: @nativeSelector "setValue:animated:"

  # Accessing the Slider’s Value Limits
  @instanceProperty "minimumValue"
  @instanceProperty "maximumValue"

  # Modifying the Slider’s Behavior
  @instanceProperty "continuous"

  # Changing the Slider’s Appearance
  minimumTrackImage:    @nativeSelector "minimumTrackImageForState:"
  setMinimumTrackImage: @nativeSelector "setMinimumTrackImage:forState:"
  maximumTrackImage:    @nativeSelector "maximumTrackImageForState:"
  setMaximumTrackImage: @nativeSelector "setMaximumTrackImage:forState:"
  thumbImage:           @nativeSelector "thumbImageForState:"
  setThumbImage:        @nativeSelector "setThumbImage:forState:"
  @instanceProperty "currentMaximumTrackImage"
  @instanceProperty "currentThumbImage"
  @instanceProperty "minimumValueImage"
  @instanceProperty "maximumValueImage"
  @instanceProperty "currentMinimumTrackImage"
  @instanceProperty("minimumTrackTintColor").makeUIAppearance()
  @instanceProperty("maximumTrackTintColor").makeUIAppearance()
  @instanceProperty("thumbTintColor").makeUIAppearance()

  # Overrides for Subclasses
  maximumValueImageRect: @nativeSelector "maximumValueImageRectForBounds:"
  minimumValueImageRect: @nativeSelector "minimumValueImageRectForBounds:"
  trackRect:             @nativeSelector "trackRectForBounds:"
  thumbRect:             @nativeSelector "thumbRectForBounds:trackRect:value:"

  @register()
