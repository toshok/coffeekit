# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISegmentedControl"
exports.UISegmentedControl = class UISegmentedControl extends UIControl
  # Initializing a Segmented Control
  initWithItems: @nativeSelector "initWithItems:"

  # Managing Segment Content
  setImage: @nativeSelector "setImage:forSegmentAtIndex:"
  image:    @nativeSelector "imageForSegmentAtIndex:"
  setTitle: @nativeSelector "setTitle:forSegmentAtIndex:"
  title:    @nativeSelector "titleForSegmentAtIndex:"

  # Managing Segments
  insertSegmentWithImage: @nativeSelector "insertSegmentWithImage:atIndex:animated:"
  insertSegmentWithTitle: @nativeSelector "insertSegmentWithTitle:atIndex:animated:"
  removeSegment:          @nativeSelector "removeSegmentAtIndex:animated:"
  removeAllSegments:      @nativeSelector "removeAllSegments"
  @instanceProperty "numberOfSegments"
  @instanceProperty "selectedSegmentIndex"

  # Managing Segment Behavior and Appearance
  setEnabled:       @nativeSelector "setEnabled:forSegmentAtIndex:"
  isEnabled:        @nativeSelector "isEnabledForSegmentAtIndex:"
  setContentOffset: @nativeSelector "setContentOffset:forSegmentAtIndex:"
  contentOffset:    @nativeSelector "contentOffsetForSegmentAtIndex:"
  setWidth:         @nativeSelector "setWidth:forSegmentAtIndex:"
  width:            @nativeSelector "widthForSegmentAtIndex:"
  @instanceProperty "momentary"
  @instanceProperty "segmentedControlStyle"
  @instanceProperty "apportionsSegmentWidthsByContent"

  # Customizing Appearance
  @instanceProperty("tintColor").makeUIAppearance()
  backgroundImage:              @nativeSelector("backgroundImageForState:barMetrics:").makeUIAppearance()
  setBackgroundImage:           @nativeSelector("setBackgroundImage:forState:barMetrics:").makeUIAppearance()
  contentPositionAdjustment:    @nativeSelector("contentPositionAdjustmentForSegmentType:barMetrics:").makeUIAppearance()
  setContentPositionAdjustment: @nativeSelector("setContentPositionAdjustment:forSegmentType:barMetrics:").makeUIAppearance()
  dividerImage:                 @nativeSelector("dividerImageForLeftSegmentState:rightSegmentState:barMetrics:").makeUIAppearance()
  setDividerImage:              @nativeSelector("setDividerImage:forLeftSegmentState:rightSegmentState:barMetrics:").makeUIAppearance()
  titleTextAttributes:          @nativeSelector("titleTextAttributesForState:").makeUIAppearance()
  setTitleTextAttributes:       @nativeSelector("setTitleTextAttributes:forState:").makeUIAppearance()

  @register()
