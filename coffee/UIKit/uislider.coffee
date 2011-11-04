#console.log "UISlider"
class UISlider extends UIControl

  # Accessing the Slider’s Value
  ck.addProperty @::, "value", { set: (v) -> setValue v, false }
  setValue: objc.invokeSelector ("setValue:animated:")

  # Accessing the Slider’s Value Limits
  ck.addProperty @::, "minimumValue"
  ck.addProperty @::, "maximumValue"

  # Modifying the Slider’s Behavior
  ck.addProperty @::, "continuous"

  # Changing the Slider’s Appearance
  ck.addProperty @::, "minimumValueImage"
  ck.addProperty @::, "maximumValueImage"
  ck.addProperty(@::, "minimumTrackTintColor").makeUIAppearance()
  ck.addProperty @::, "currentMinimumTrackImage"
  minimumTrackImage: objc.invokeSelector ("minimumTrackImageForState:")
  setMinimumTrackImage: objc.invokeSelector ("setMinimumTrackImage:forState:")
  ck.addProperty(@::, "maximumTrackTintColor").makeUIAppearance()
  ck.addProperty @::, "currentMaximumTrackImage"
  maximumTrackImage: objc.invokeSelector ("maximumTrackImageForState:")
  setMaximumTrackImage: objc.invokeSelector ("setMaximumTrackImage:forState:")
  ck.addProperty(@::, "thumbTintColor").makeUIAppearance()
  ck.addProperty @::, "currentThumbImage"
  thumbImage: objc.invokeSelector ("thumbImageForState:")
  setThumbImage: objc.invokeSelector ("setThumbImage:forState:")

  # Overrides for Subclasses
  maximumValueImageRect: objc.invokeSelector ("maximumValueImageRectForBounds:")
  minimumValueImageRect: objc.invokeSelector ("minimumValueImageRectForBounds:")
  trackRect: objc.invokeSelector ("trackRectForBounds:")
  thumbRect: objc.invokeSelector ("thumbRectForBounds:trackRect:value:")

new ck.RegisterAttribute UISlider, "UISlider"
exports.UISlider = UISlider
