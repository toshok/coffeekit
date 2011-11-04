class NSView extends foundation.NSResponder
  constructor: (handle) ->
    super (if handle then handle else objc.allocInstance (@.constructor.name))

  toString: -> "[NSView #{@handle}]"

  # Creating Instances
  initWithFrame: objc.invokeSelector "initWithFrame:"

  # Managing the View Hierarchy
  superview: objc.invokeSelector "superview"
  setSubviews: objc.invokeSelector "setSubviews:"
  subviews: objc.invokeSelector "subviews"
  window: objc.invokeSelector "window"
  addSubview: objc.invokeSelector "addSubview:"
  addSubviewPositionedRelativeTo: objc.invokeSelector "addSubview:positioned:relativeTo:"
  didAddSubview: objc.invokeSelector "didAddSubview:"
  removeFromSuperview: objc.invokeSelector "removeFromSuperview"
  removeFromSuperviewWithoutNeedingDisplay: objc.invokeSelector "removeFromSuperviewWithoutNeedingDisplay"
  replaceSubview: objc.invokeSelector "replaceSubview:with:"
  isDescendantOf: objc.invokeSelector "isDescendantOf:"
  opaqueAncestor: objc.invokeSelector "opaqueAncestor"
  ancestorSharedWithView: objc.invokeSelector "ancestorSharedWithView:"
  sortSubviewsUsingFunction: objc.invokeSelector "sortSubviewsUsingFunction:context:"
  viewDidMoveToSuperview: objc.invokeSelector "viewDidMoveToSuperview"
  viewDidMoveToWindow: objc.invokeSelector "viewDidMoveToWindow"
  viewWillMoveToSuperview: objc.invokeSelector "viewWillMoveToSuperview:"
  viewWillMoveToWindow: objc.invokeSelector "viewWillMoveToWindow:"
  willRemoveSubview: objc.invokeSelector "willRemoveSubview:"
  enclosingMenuItem: objc.invokeSelector "enclosingMenuItem"

  # Searching by Tag
  viewWithTag: objc.invokeSelector "viewWithTag:"
  tag: objc.invokeSelector "tag"

  # Modifying the Frame Rectangle
  setFrame: objc.invokeSelector "setFrame:"
  frame: objc.invokeSelector "frame"
  setFrameOrigin: objc.invokeSelector "setFrameOrigin:"
  setFrameSize: objc.invokeSelector "setFrameSize:"
  setFrameRotation: objc.invokeSelector "setFrameRotation:"
  frameRotation: objc.invokeSelector "frameRotation"

  # Modifying the Bounds Rectangle
  setBounds: objc.invokeSelector "setBounds:"
  bounds: objc.invokeSelector "bounds"
  setBoundsOrigin: objc.invokeSelector "setBoundsOrigin:"
  setBoundsSize: objc.invokeSelector "setBoundsSize:"
  setBoundsRotation: objc.invokeSelector "setBoundsRotation:"
  boundsRotation: objc.invokeSelector "boundsRotation"

  # Modifying the Coordinate System
  translateOriginToPoint: objc.invokeSelector "translateOriginToPoint:"
  scaleUnitSquareToSize: objc.invokeSelector "scaleUnitSquareToSize:"
  rotateByAngle: objc.invokeSelector "rotateByAngle:"

  # Examining Coordinate System Modifications
  isFlipped: objc.invokeSelector "isFlipped"
  isRotatedFromBase: objc.invokeSelector "isRotatedFromBase"
  isRotatedOrScaledFromBase: objc.invokeSelector "isRotatedOrScaledFromBase"

  # Base Coordinate Conversion
  convertPointToBase: objc.invokeSelector "convertPointToBase:"
  convertPointFromBase: objc.invokeSelector "convertPointFromBase:"
  convertSizeToBase: objc.invokeSelector "convertSizeToBase:"
  convertSizeFromBase: objc.invokeSelector "convertSizeFromBase:"
  convertRectToBase: objc.invokeSelector "convertRectToBase:"
  convertRectFromBase: objc.invokeSelector "convertRectFromBase:"

  # Converting Coordinates
  backingAlignedRect: objc.invokeSelector "backingAlignedRect:options:"
  convertPointFromBacking: objc.invokeSelector "convertPointFromBacking:"
  convertPointToBacking: objc.invokeSelector "convertPointToBacking:"
  convertPointFromLayer: objc.invokeSelector "convertPointFromLayer:"
  convertPointToLayer: objc.invokeSelector "convertPointToLayer:"
  convertRectFromBacking: objc.invokeSelector "convertRectFromBacking:"
  convertRectToBacking: objc.invokeSelector "convertRectToBacking:"
  convertRectFromLayer: objc.invokeSelector "convertRectFromLayer:"
  convertRectToLayer: objc.invokeSelector "convertRectToLayer:"
  convertSizeFromBacking: objc.invokeSelector "convertSizeFromBacking:"
  convertSizeToBacking: objc.invokeSelector "convertSizeToBacking:"
  convertSizeFromLayer: objc.invokeSelector "convertSizeFromLayer:"
  convertSizeToLayer: objc.invokeSelector "convertSizeToLayer:"
  convertPointFromView: objc.invokeSelector "convertPoint:fromView:"
  convertPointToView: objc.invokeSelector "convertPoint:toView:"
  convertSizeFromView: objc.invokeSelector "convertSize:fromView:"
  convertSizeToView: objc.invokeSelector "convertSize:toView:"
  convertRectFromView: objc.invokeSelector "convertRect:fromView:"
  convertRectToView: objc.invokeSelector "convertRect:toView:"
  centerScanRect: objc.invokeSelector "centerScanRect:"

  # Controlling Notifications
  setPostsFrameChangedNotifications: objc.invokeSelector "setPostsFrameChangedNotifications:"
  postsFrameChangedNotifications: objc.invokeSelector "postsFrameChangedNotifications"
  setPostsBoundsChangedNotifications: objc.invokeSelector "setPostsBoundsChangedNotifications:"
  postsBoundsChangedNotifications: objc.invokeSelector "postsBoundsChangedNotifications"

  # Resizing Subviews
  resizeSubviewsWithOldSize: objc.invokeSelector "resizeSubviewsWithOldSize:"
  resizeWithOldSuperviewSize: objc.invokeSelector "resizeWithOldSuperviewSize:"
  setAutoresizesSubviews: objc.invokeSelector "setAutoresizesSubviews:"
  autoresizesSubviews: objc.invokeSelector "autoresizesSubviews"
  setAutoresizingMask: objc.invokeSelector "setAutoresizingMask:"
  autoresizingMask: objc.invokeSelector "autoresizingMask"

  # Focusing
  lockFocus: objc.invokeSelector "lockFocus"
  lockFocusIfCanDraw: objc.invokeSelector "lockFocusIfCanDraw"
  lockFocusIfCanDrawInContext: objc.invokeSelector "lockFocusIfCanDrawInContext:"
  unlockFocus: objc.invokeSelector "unlockFocus"
  focusView: objc.invokeSelector "focusView"

  # Displaying
  setNeedsDisplay: objc.invokeSelector "setNeedsDisplay:"
  setNeedsDisplayInRect: objc.invokeSelector "setNeedsDisplayInRect:"
  needsDisplay: objc.invokeSelector "needsDisplay"
  display: objc.invokeSelector "display"
  displayRect: objc.invokeSelector "displayRect:"
  displayRectIgnoringOpacity: objc.invokeSelector "displayRectIgnoringOpacity:"
  displayRectIgnoringOpacityInContext: objc.invokeSelector "displayRectIgnoringOpacity:inContext:"
  displayIfNeeded: objc.invokeSelector "displayIfNeeded"
  displayIfNeededInRect: objc.invokeSelector "displayIfNeededInRect:"
  displayIfNeededIgnoringOpacity: objc.invokeSelector "displayIfNeededIgnoringOpacity"
  displayIfNeededInRectIgnoringOpacity: objc.invokeSelector "displayIfNeededInRectIgnoringOpacity:"
  translateRectsNeedingDisplayInRect: objc.invokeSelector "translateRectsNeedingDisplayInRect:by:"
  isOpaque: objc.invokeSelector "isOpaque"
  viewWillDraw: objc.invokeSelector "viewWillDraw"

  # Focus Ring Drawing
  drawFocusRingMask: objc.invokeSelector "drawFocusRingMask"
  focusRingMaskBounds: objc.invokeSelector "focusRingMaskBounds"
  noteFocusRingMaskChanged: objc.invokeSelector "noteFocusRingMaskChanged"
  setKeyboardFocusRingNeedsDisplayInRect: objc.invokeSelector "setKeyboardFocusRingNeedsDisplayInRect:"
  defaultFocusRingType: objc.invokeSelector "defaultFocusRingType"
  setFocusRingType: objc.invokeSelector "setFocusRingType:"
  focusRingType: objc.invokeSelector "focusRingType"

  # Fullscreen Mode
  enterFullScreenMode: objc.invokeSelector "enterFullScreenMode:withOptions:"
  exitFullScreenMode: objc.invokeSelector "exitFullScreenModeWithOptions:"
  isInFullScreenMode: objc.invokeSelector "isInFullScreenMode"

  # Hiding Views
  ck.addProperty @::, "hidden", { get: "isHidden" }
  isHiddenOrHasHiddenAncestor: objc.invokeSelector "isHiddenOrHasHiddenAncestor"
  viewDidHide: objc.invokeSelector "viewDidHide"
  viewDidUnhide: objc.invokeSelector "viewDidUnhide"

  # Drawing
  canDrawConcurrently: objc.invokeSelector "canDrawConcurrently"
  setCanDrawConcurrently: objc.invokeSelector "setCanDrawConcurrently:"
  drawRect: objc.invokeSelector "drawRect:"
  visibleRect: objc.invokeSelector "visibleRect"
  canDraw: objc.invokeSelector "canDraw"
  shouldDrawColor: objc.invokeSelector "shouldDrawColor"
  getRectsBeingDrawn: objc.invokeSelector "getRectsBeingDrawn:count:"
  needsToDrawRect: objc.invokeSelector "needsToDrawRect:"
  wantsDefaultClipping: objc.invokeSelector "wantsDefaultClipping"
  bitmapImageRepForCachingDisplayInRect: objc.invokeSelector "bitmapImageRepForCachingDisplayInRect:"
  cacheDisplayInRectToBitmapImageRep: objc.invokeSelector "cacheDisplayInRect:toBitmapImageRep:"

  # Managing Live Resize
  inLiveResize: objc.invokeSelector "inLiveResize"
  preservesContentDuringLiveResize: objc.invokeSelector "preservesContentDuringLiveResize"
  getRectsExposedDuringLiveResize: objc.invokeSelector "getRectsExposedDuringLiveResize:count:"
  rectPreservedDuringLiveResize: objc.invokeSelector "rectPreservedDuringLiveResize"
  viewWillStartLiveResize: objc.invokeSelector "viewWillStartLiveResize"
  viewDidEndLiveResize: objc.invokeSelector "viewDidEndLiveResize"

  # Managing the Graphics State
  allocateGState: objc.invokeSelector "allocateGState"
  gState: objc.invokeSelector "gState"
  setUpGState: objc.invokeSelector "setUpGState"
  renewGState: objc.invokeSelector "renewGState"
  releaseGState: objc.invokeSelector "releaseGState"

  # Event Handling
  acceptsFirstMouse: objc.invokeSelector "acceptsFirstMouse:"
  hitTest: objc.invokeSelector "hitTest:"
  mouseInRect: objc.invokeSelector "mouse:inRect:"
  performKeyEquivalent: objc.invokeSelector "performKeyEquivalent:"
  rightMouseDown: objc.invokeSelector "rightMouseDown:"
  performMnemonic: objc.invokeSelector "performMnemonic:"
  mouseDownCanMoveWindow: objc.invokeSelector "mouseDownCanMoveWindow"
  inputContext: objc.invokeSelector "inputContext"

  # Dragging Operations
  registeredDraggedTypes: objc.invokeSelector "registeredDraggedTypes"
  registerForDraggedTypes: objc.invokeSelector "registerForDraggedTypes:"
  unregisterDraggedTypes: objc.invokeSelector "unregisterDraggedTypes"
  beginDraggingSession: objc.invokeSelector "beginDraggingSessionWithItems:event:source:"
  dragFile: objc.invokeSelector "dragFile:fromRect:slideBack:event:"
  dragImage: objc.invokeSelector "dragImage:at:offset:event:pasteboard:source:slideBack:"
  dragPromisedFiles: objc.invokeSelector "dragPromisedFilesOfTypes:fromRect:source:slideBack:event:"
  shouldDelayWindowOrderingForEvent: objc.invokeSelector "shouldDelayWindowOrderingForEvent:"

  # Tool Tips
  addToolTip: objc.invokeSelector "addToolTipRect:owner:userData:"
  removeAllToolTips: objc.invokeSelector "removeAllToolTips"
  removeToolTip: objc.invokeSelector "removeToolTip:"
  setToolTip: objc.invokeSelector "setToolTip:"
  toolTip: objc.invokeSelector "toolTip"

  # Managing Tracking Rectangles
  addTrackingRect: objc.invokeSelector "addTrackingRect:owner:userData:assumeInside:"
  removeTrackingRect: objc.invokeSelector "removeTrackingRect:"

  # Managing Tracking Areas
  addTrackingArea: objc.invokeSelector "addTrackingArea:"
  removeTrackingArea: objc.invokeSelector "removeTrackingArea:"
  trackingAreas: objc.invokeSelector "trackingAreas"
  updateTrackingAreas: objc.invokeSelector "updateTrackingAreas"

  # Managing Cursor Tracking
  addCursorRect: objc.invokeSelector "addCursorRect:cursor:"
  removeCursorRect: objc.invokeSelector "removeCursorRect:cursor:"
  discardCursorRects: objc.invokeSelector "discardCursorRects"
  resetCursorRects: objc.invokeSelector "resetCursorRects"

  # Scrolling
  scrollPoint: objc.invokeSelector "scrollPoint:"
  scrollRectToVisible: objc.invokeSelector "scrollRectToVisible:"
  autoscroll: objc.invokeSelector "autoscroll:"
  adjustScroll: objc.invokeSelector "adjustScroll:"
  scrollRectBy: objc.invokeSelector "scrollRect:by:"
  enclosingScrollView: objc.invokeSelector "enclosingScrollView"
  scrollClipViewToPoint: objc.invokeSelector "scrollClipView:toPoint:"
  reflectScrolledClipView: objc.invokeSelector "reflectScrolledClipView:"

  # Contextual Menus
  menuForEvent: objc.invokeSelector "menuForEvent:"
  defaultMenu: objc.invokeSelector "defaultMenu"

  # Key-view Loop Management
  canBecomeKeyView: objc.invokeSelector "canBecomeKeyView"
  needsPanelToBecomeKey: objc.invokeSelector "needsPanelToBecomeKey"
  setNextKeyView: objc.invokeSelector "setNextKeyView:"
  nextKeyView: objc.invokeSelector "nextKeyView"
  nextValidKeyView: objc.invokeSelector "nextValidKeyView"
  previousKeyView: objc.invokeSelector "previousKeyView"
  previousValidKeyView: objc.invokeSelector "previousValidKeyView"

  # Printing
  print: objc.invokeSelector "print:"
  beginPage: objc.invokeSelector "beginPageInRect:atPlacement:"
  dataWithEPSInsideRect: objc.invokeSelector "dataWithEPSInsideRect:"
  dataWithPDFInsideRect: objc.invokeSelector "dataWithPDFInsideRect:"
  printJobTitle: objc.invokeSelector "printJobTitle"
  pageFooter: objc.invokeSelector "pageFooter"
  pageHeader: objc.invokeSelector "pageHeader"
  writeEPS: objc.invokeSelector "writeEPSInsideRect:toPasteboard:"
  writePDF: objc.invokeSelector "writePDFInsideRect:toPasteboard:"
  drawPageBorderWithSize: objc.invokeSelector "drawPageBorderWithSize:"
  drawSheetBorderWithSize: objc.invokeSelector "drawSheetBorderWithSize:"

  # Pagination
  heightAdjustLimit: objc.invokeSelector "heightAdjustLimit"
  widthAdjustLimit: objc.invokeSelector "widthAdjustLimit"
  adjustPageWidth: objc.invokeSelector "adjustPageWidthNew:left:right:limit:"
  adjustPageHeight: objc.invokeSelector "adjustPageHeightNew:top:bottom:limit:"
  knowsPageRange: objc.invokeSelector "knowsPageRange:"
  rectForPage: objc.invokeSelector "rectForPage:"
  locationOfPrintRect: objc.invokeSelector "locationOfPrintRect:"

  # Writing Conforming Rendering Instructions
  beginDocument: objc.invokeSelector "beginDocument"
  endDocument: objc.invokeSelector "endDocument"
  endPage: objc.invokeSelector "endPage"

  # Core Animation Layer-Backing
  layer: objc.invokeSelector "layer"
  setLayer: objc.invokeSelector "setLayer:"
  wantsLayer: objc.invokeSelector "wantsLayer"
  setWantsLayer: objc.invokeSelector "setWantsLayer:"
  makeBackingLayer: objc.invokeSelector "makeBackingLayer"
  layerContentsPlacement: objc.invokeSelector "layerContentsPlacement"
  setLayerContentsPlacement: objc.invokeSelector "setLayerContentsPlacement:"
  layerContentsRedrawPolicy: objc.invokeSelector "layerContentsRedrawPolicy"
  setLayerContentsRedrawPolicy: objc.invokeSelector "setLayerContentsRedrawPolicy:"

  # Core Animation Layer Properties
  setFrameCenterRotation: objc.invokeSelector "setFrameCenterRotation:"
  frameCenterRotation: objc.invokeSelector "frameCenterRotation"
  setAlphaValue: objc.invokeSelector "setAlphaValue:"
  alphaValue: objc.invokeSelector "alphaValue"
  setBackgroundFilters: objc.invokeSelector "setBackgroundFilters:"
  backgroundFilters: objc.invokeSelector "backgroundFilters"
  setCompositingFilter: objc.invokeSelector "setCompositingFilter:"
  compositingFilter: objc.invokeSelector "compositingFilter"
  setContentFilters: objc.invokeSelector "setContentFilters:"
  contentFilters: objc.invokeSelector "contentFilters"
  setShadow: objc.invokeSelector "setShadow:"
  shadow: objc.invokeSelector "shadow"

  # Displaying Definition Windows
  showDefinitionForAttributedStringAtPoint: objc.invokeSelector "showDefinitionForAttributedString:atPoint:"
  showDefinitionForAttributedString: objc.invokeSelector "showDefinitionForAttributedString:range:options:baselineOriginProvider:"

  # Touch Event Handling
  ck.addProperty @::, "acceptsTouchEvents"
  ck.addProperty @::, "wantsRestingTouches"

  # Drawing Find Indicator
  isDrawingFindIndicator: objc.invokeSelector "isDrawingFindIndicator"

  # Managing Constraints
  constraints: objc.invokeSelector "constraints"
  addConstraint: objc.invokeSelector "addConstraint:"
  addConstraints: objc.invokeSelector "addConstraints:"
  removeConstraint: objc.invokeSelector "removeConstraint:"
  removeConstraints: objc.invokeSelector "removeConstraints:"

  # Measuring in Constraint-Based Layout
  fittingSize: objc.invokeSelector "fittingSize"
  intrinsicContentSize: objc.invokeSelector "intrinsicContentSize"
  invalidateIntrinsicContentSize: objc.invokeSelector "invalidateIntrinsicContentSize"
  contentCompressionResistancePriority: objc.invokeSelector "contentCompressionResistancePriorityForOrientation:"
  setContentCompressionResistancePriority: objc.invokeSelector "setContentCompressionResistancePriority:forOrientation:"
  contentHuggingPriority: objc.invokeSelector "contentHuggingPriorityForOrientation:"
  setContentHuggingPriority: objc.invokeSelector "setContentHuggingPriority:forOrientation:"

  # Aligning Views with Constraint-Based Layout
  alignmentRectForFrame: objc.invokeSelector "alignmentRectForFrame:"
  frameForAlignmentRect: objc.invokeSelector "frameForAlignmentRect:"
  alignmentRectInsets: objc.invokeSelector "alignmentRectInsets"
  baselineOffsetFromBottom: objc.invokeSelector "baselineOffsetFromBottom"

  # Triggering Constraint-Based Layout
  needsLayout: objc.invokeSelector "needsLayout"
  setNeedsLayout: objc.invokeSelector "setNeedsLayout:"
  layout: objc.invokeSelector "layout"
  layoutSubtreeIfNeeded: objc.invokeSelector "layoutSubtreeIfNeeded"
  needsUpdateConstraints: objc.invokeSelector "needsUpdateConstraints"
  setNeedsUpdateConstraints: objc.invokeSelector "setNeedsUpdateConstraints:"
  updateConstraints: objc.invokeSelector "updateConstraints"
  updateConstraintsForSubtreeIfNeeded: objc.invokeSelector "updateConstraintsForSubtreeIfNeeded"

  # Opting in to Constraint-Based Layout
  requiresConstraintBasedLayout: objc.invokeSelector "requiresConstraintBasedLayout"
  translatesAutoresizingMaskIntoConstraints: objc.invokeSelector "translatesAutoresizingMaskIntoConstraints"
  setTranslatesAutoresizingMaskIntoConstraints: objc.invokeSelector "setTranslatesAutoresizingMaskIntoConstraints:"

  # Debugging Constraint-Based Layout

  # See Cocoa Autolayout Release Notes for more details on debugging constraint-based layout.

  constraintsAffectingLayoutForOrientation: objc.invokeSelector "constraintsAffectingLayoutForOrientation:"
  hasAmbiguousLayout: objc.invokeSelector "hasAmbiguousLayout"
  exerciseAmbiguityInLayout: objc.invokeSelector "exerciseAmbiguityInLayout"

new ck.RegisterAttribute NSView, "NSView"
exports.NSView = NSView
