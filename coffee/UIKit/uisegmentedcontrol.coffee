# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISegmentedControl"
exports.UISegmentedControl = class UISegmentedControl extends UIControl
  @register()

  # Initializing a Segmented Control
  initWithItems: objc.invokeSelector "initWithItems:"

  # Managing Segment Content
  setImage: objc.invokeSelector "setImage:forSegmentAtIndex:"
  image: objc.invokeSelector "imageForSegmentAtIndex:"
  setTitle: objc.invokeSelector "setTitle:forSegmentAtIndex:"
  title: objc.invokeSelector "titleForSegmentAtIndex:"

  # Managing Segments
  insertSegmentWithImage: objc.invokeSelector "insertSegmentWithImage:atIndex:animated:"
  insertSegmentWithTitle: objc.invokeSelector "insertSegmentWithTitle:atIndex:animated:"
  ck.instanceProperty @, "numberOfSegments"
  removeAllSegments: objc.invokeSelector "removeAllSegments"
  removeSegment: objc.invokeSelector "removeSegmentAtIndex:animated:"
  ck.instanceProperty @, "selectedSegmentIndex"

  # Managing Segment Behavior and Appearance
  ck.instanceProperty @, "momentary"
  ck.instanceProperty @, "segmentedControlStyle"
  setEnabled: objc.invokeSelector "setEnabled:forSegmentAtIndex:"
  isEnabled: objc.invokeSelector "isEnabledForSegmentAtIndex:"
  setContentOffset: objc.invokeSelector "setContentOffset:forSegmentAtIndex:"
  contentOffset: objc.invokeSelector "contentOffsetForSegmentAtIndex:"
  setWidth: objc.invokeSelector "setWidth:forSegmentAtIndex:"
  width: objc.invokeSelector "widthForSegmentAtIndex:"
  ck.instanceProperty @, "apportionsSegmentWidthsByContent"

  # Customizing Appearance
  ck.instanceProperty(@, "tintColor").makeUIAppearance()
  backgroundImage: objc.invokeSelector("backgroundImageForState:barMetrics:").makeUIAppearance()
  setBackgroundImage: objc.invokeSelector("setBackgroundImage:forState:barMetrics:").makeUIAppearance()
  contentPositionAdjustment: objc.invokeSelector("contentPositionAdjustmentForSegmentType:barMetrics:").makeUIAppearance()
  setContentPositionAdjustment: objc.invokeSelector("setContentPositionAdjustment:forSegmentType:barMetrics:").makeUIAppearance()
  dividerImage: objc.invokeSelector("dividerImageForLeftSegmentState:rightSegmentState:barMetrics:").makeUIAppearance()
  setDividerImage: objc.invokeSelector("setDividerImage:forLeftSegmentState:rightSegmentState:barMetrics:").makeUIAppearance()
  titleTextAttributes: objc.invokeSelector("titleTextAttributesForState:").makeUIAppearance()
  setTitleTextAttributes: objc.invokeSelector("setTitleTextAttributes:forState:").makeUIAppearance()
