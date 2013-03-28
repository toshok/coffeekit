# This file is part of coffeekit.  for licensing information, see the LICENSE file

ck.register exports.NSView = class NSView extends foundation.NSResponder
  # Creating Instances
  initWithFrame: @nativeSelector "initWithFrame:"

  # Managing the View Hierarchy
  superview: @nativeSelector "superview"
  setSubviews: @nativeSelector "setSubviews:"
  subviews: @nativeSelector "subviews"
  window: @nativeSelector "window"
  addSubview: @nativeSelector "addSubview:"
  addSubviewPositionedRelativeTo: @nativeSelector "addSubview:positioned:relativeTo:"
  didAddSubview: @nativeSelector "didAddSubview:"
  removeFromSuperview: @nativeSelector "removeFromSuperview"
  removeFromSuperviewWithoutNeedingDisplay: @nativeSelector "removeFromSuperviewWithoutNeedingDisplay"
  replaceSubview: @nativeSelector "replaceSubview:with:"
  isDescendantOf: @nativeSelector "isDescendantOf:"
  opaqueAncestor: @nativeSelector "opaqueAncestor"
  ancestorSharedWithView: @nativeSelector "ancestorSharedWithView:"
  sortSubviewsUsingFunction: @nativeSelector "sortSubviewsUsingFunction:context:"
  viewDidMoveToSuperview: @nativeSelector "viewDidMoveToSuperview"
  viewDidMoveToWindow: @nativeSelector "viewDidMoveToWindow"
  viewWillMoveToSuperview: @nativeSelector "viewWillMoveToSuperview:"
  viewWillMoveToWindow: @nativeSelector "viewWillMoveToWindow:"
  willRemoveSubview: @nativeSelector "willRemoveSubview:"
  enclosingMenuItem: @nativeSelector "enclosingMenuItem"

  # Searching by Tag
  viewWithTag: @nativeSelector "viewWithTag:"
  tag: @nativeSelector "tag"

  # Modifying the Frame Rectangle
  @instanceProperty "frame"
  setFrameOrigin: @nativeSelector "setFrameOrigin:"
  setFrameSize: @nativeSelector "setFrameSize:"
  setFrameRotation: @nativeSelector "setFrameRotation:"
  frameRotation: @nativeSelector "frameRotation"

  # Modifying the Bounds Rectangle
  @instanceProperty "bounds"
  setBoundsOrigin: @nativeSelector "setBoundsOrigin:"
  setBoundsSize: @nativeSelector "setBoundsSize:"
  setBoundsRotation: @nativeSelector "setBoundsRotation:"
  boundsRotation: @nativeSelector "boundsRotation"

  # Modifying the Coordinate System
  translateOriginToPoint: @nativeSelector "translateOriginToPoint:"
  scaleUnitSquareToSize: @nativeSelector "scaleUnitSquareToSize:"
  rotateByAngle: @nativeSelector "rotateByAngle:"

  # Examining Coordinate System Modifications
  isFlipped: @nativeSelector "isFlipped"
  isRotatedFromBase: @nativeSelector "isRotatedFromBase"
  isRotatedOrScaledFromBase: @nativeSelector "isRotatedOrScaledFromBase"

  # Base Coordinate Conversion
  convertPointToBase: @nativeSelector "convertPointToBase:"
  convertPointFromBase: @nativeSelector "convertPointFromBase:"
  convertSizeToBase: @nativeSelector "convertSizeToBase:"
  convertSizeFromBase: @nativeSelector "convertSizeFromBase:"
  convertRectToBase: @nativeSelector "convertRectToBase:"
  convertRectFromBase: @nativeSelector "convertRectFromBase:"

  # Converting Coordinates
  backingAlignedRect: @nativeSelector "backingAlignedRect:options:"
  convertPointFromBacking: @nativeSelector "convertPointFromBacking:"
  convertPointToBacking: @nativeSelector "convertPointToBacking:"
  convertPointFromLayer: @nativeSelector "convertPointFromLayer:"
  convertPointToLayer: @nativeSelector "convertPointToLayer:"
  convertRectFromBacking: @nativeSelector "convertRectFromBacking:"
  convertRectToBacking: @nativeSelector "convertRectToBacking:"
  convertRectFromLayer: @nativeSelector "convertRectFromLayer:"
  convertRectToLayer: @nativeSelector "convertRectToLayer:"
  convertSizeFromBacking: @nativeSelector "convertSizeFromBacking:"
  convertSizeToBacking: @nativeSelector "convertSizeToBacking:"
  convertSizeFromLayer: @nativeSelector "convertSizeFromLayer:"
  convertSizeToLayer: @nativeSelector "convertSizeToLayer:"
  convertPointFromView: @nativeSelector "convertPoint:fromView:"
  convertPointToView: @nativeSelector "convertPoint:toView:"
  convertSizeFromView: @nativeSelector "convertSize:fromView:"
  convertSizeToView: @nativeSelector "convertSize:toView:"
  convertRectFromView: @nativeSelector "convertRect:fromView:"
  convertRectToView: @nativeSelector "convertRect:toView:"
  centerScanRect: @nativeSelector "centerScanRect:"

  # Controlling Notifications
  setPostsFrameChangedNotifications: @nativeSelector "setPostsFrameChangedNotifications:"
  postsFrameChangedNotifications: @nativeSelector "postsFrameChangedNotifications"
  setPostsBoundsChangedNotifications: @nativeSelector "setPostsBoundsChangedNotifications:"
  postsBoundsChangedNotifications: @nativeSelector "postsBoundsChangedNotifications"

  # Resizing Subviews
  resizeSubviewsWithOldSize: @nativeSelector "resizeSubviewsWithOldSize:"
  resizeWithOldSuperviewSize: @nativeSelector "resizeWithOldSuperviewSize:"
  setAutoresizesSubviews: @nativeSelector "setAutoresizesSubviews:"
  autoresizesSubviews: @nativeSelector "autoresizesSubviews"
  setAutoresizingMask: @nativeSelector "setAutoresizingMask:"
  autoresizingMask: @nativeSelector "autoresizingMask"

  # Focusing
  lockFocus: @nativeSelector "lockFocus"
  lockFocusIfCanDraw: @nativeSelector "lockFocusIfCanDraw"
  lockFocusIfCanDrawInContext: @nativeSelector "lockFocusIfCanDrawInContext:"
  unlockFocus: @nativeSelector "unlockFocus"
  focusView: @nativeSelector "focusView"

  # Displaying
  setNeedsDisplay: @nativeSelector "setNeedsDisplay:"
  setNeedsDisplayInRect: @nativeSelector "setNeedsDisplayInRect:"
  needsDisplay: @nativeSelector "needsDisplay"
  display: @nativeSelector "display"
  displayRect: @nativeSelector "displayRect:"
  displayRectIgnoringOpacity: @nativeSelector "displayRectIgnoringOpacity:"
  displayRectIgnoringOpacityInContext: @nativeSelector "displayRectIgnoringOpacity:inContext:"
  displayIfNeeded: @nativeSelector "displayIfNeeded"
  displayIfNeededInRect: @nativeSelector "displayIfNeededInRect:"
  displayIfNeededIgnoringOpacity: @nativeSelector "displayIfNeededIgnoringOpacity"
  displayIfNeededInRectIgnoringOpacity: @nativeSelector "displayIfNeededInRectIgnoringOpacity:"
  translateRectsNeedingDisplayInRect: @nativeSelector "translateRectsNeedingDisplayInRect:by:"
  isOpaque: @nativeSelector "isOpaque"
  viewWillDraw: @nativeSelector "viewWillDraw"

  # Focus Ring Drawing
  drawFocusRingMask: @nativeSelector "drawFocusRingMask"
  focusRingMaskBounds: @nativeSelector "focusRingMaskBounds"
  noteFocusRingMaskChanged: @nativeSelector "noteFocusRingMaskChanged"
  setKeyboardFocusRingNeedsDisplayInRect: @nativeSelector "setKeyboardFocusRingNeedsDisplayInRect:"
  defaultFocusRingType: @nativeSelector "defaultFocusRingType"
  setFocusRingType: @nativeSelector "setFocusRingType:"
  focusRingType: @nativeSelector "focusRingType"

  # Fullscreen Mode
  enterFullScreenMode: @nativeSelector "enterFullScreenMode:withOptions:"
  exitFullScreenMode: @nativeSelector "exitFullScreenModeWithOptions:"
  isInFullScreenMode: @nativeSelector "isInFullScreenMode"

  # Hiding Views
  @instanceProperty "hidden", { get: "isHidden" }
  isHiddenOrHasHiddenAncestor: @nativeSelector "isHiddenOrHasHiddenAncestor"
  viewDidHide: @nativeSelector "viewDidHide"
  viewDidUnhide: @nativeSelector "viewDidUnhide"

  # Drawing
  canDrawConcurrently: @nativeSelector "canDrawConcurrently"
  setCanDrawConcurrently: @nativeSelector "setCanDrawConcurrently:"
  drawRect: @nativeSelector "drawRect:"
  visibleRect: @nativeSelector "visibleRect"
  canDraw: @nativeSelector "canDraw"
  shouldDrawColor: @nativeSelector "shouldDrawColor"
  getRectsBeingDrawn: @nativeSelector "getRectsBeingDrawn:count:"
  needsToDrawRect: @nativeSelector "needsToDrawRect:"
  wantsDefaultClipping: @nativeSelector "wantsDefaultClipping"
  bitmapImageRepForCachingDisplayInRect: @nativeSelector "bitmapImageRepForCachingDisplayInRect:"
  cacheDisplayInRectToBitmapImageRep: @nativeSelector "cacheDisplayInRect:toBitmapImageRep:"

  # Managing Live Resize
  inLiveResize: @nativeSelector "inLiveResize"
  preservesContentDuringLiveResize: @nativeSelector "preservesContentDuringLiveResize"
  getRectsExposedDuringLiveResize: @nativeSelector "getRectsExposedDuringLiveResize:count:"
  rectPreservedDuringLiveResize: @nativeSelector "rectPreservedDuringLiveResize"
  viewWillStartLiveResize: @nativeSelector "viewWillStartLiveResize"
  viewDidEndLiveResize: @nativeSelector "viewDidEndLiveResize"

  # Managing the Graphics State
  allocateGState: @nativeSelector "allocateGState"
  gState: @nativeSelector "gState"
  setUpGState: @nativeSelector "setUpGState"
  renewGState: @nativeSelector "renewGState"
  releaseGState: @nativeSelector "releaseGState"

  # Event Handling
  acceptsFirstMouse: @nativeSelector "acceptsFirstMouse:"
  hitTest: @nativeSelector "hitTest:"
  mouseInRect: @nativeSelector "mouse:inRect:"
  performKeyEquivalent: @nativeSelector "performKeyEquivalent:"
  rightMouseDown: @nativeSelector "rightMouseDown:"
  performMnemonic: @nativeSelector "performMnemonic:"
  mouseDownCanMoveWindow: @nativeSelector "mouseDownCanMoveWindow"
  inputContext: @nativeSelector "inputContext"

  # Dragging Operations
  registeredDraggedTypes: @nativeSelector "registeredDraggedTypes"
  registerForDraggedTypes: @nativeSelector "registerForDraggedTypes:"
  unregisterDraggedTypes: @nativeSelector "unregisterDraggedTypes"
  beginDraggingSession: @nativeSelector "beginDraggingSessionWithItems:event:source:"
  dragFile: @nativeSelector "dragFile:fromRect:slideBack:event:"
  dragImage: @nativeSelector "dragImage:at:offset:event:pasteboard:source:slideBack:"
  dragPromisedFiles: @nativeSelector "dragPromisedFilesOfTypes:fromRect:source:slideBack:event:"
  shouldDelayWindowOrderingForEvent: @nativeSelector "shouldDelayWindowOrderingForEvent:"

  # Tool Tips
  addToolTip: @nativeSelector "addToolTipRect:owner:userData:"
  removeAllToolTips: @nativeSelector "removeAllToolTips"
  removeToolTip: @nativeSelector "removeToolTip:"
  setToolTip: @nativeSelector "setToolTip:"
  toolTip: @nativeSelector "toolTip"

  # Managing Tracking Rectangles
  addTrackingRect: @nativeSelector "addTrackingRect:owner:userData:assumeInside:"
  removeTrackingRect: @nativeSelector "removeTrackingRect:"

  # Managing Tracking Areas
  addTrackingArea: @nativeSelector "addTrackingArea:"
  removeTrackingArea: @nativeSelector "removeTrackingArea:"
  trackingAreas: @nativeSelector "trackingAreas"
  updateTrackingAreas: @nativeSelector "updateTrackingAreas"

  # Managing Cursor Tracking
  addCursorRect: @nativeSelector "addCursorRect:cursor:"
  removeCursorRect: @nativeSelector "removeCursorRect:cursor:"
  discardCursorRects: @nativeSelector "discardCursorRects"
  resetCursorRects: @nativeSelector "resetCursorRects"

  # Scrolling
  scrollPoint: @nativeSelector "scrollPoint:"
  scrollRectToVisible: @nativeSelector "scrollRectToVisible:"
  autoscroll: @nativeSelector "autoscroll:"
  adjustScroll: @nativeSelector "adjustScroll:"
  scrollRectBy: @nativeSelector "scrollRect:by:"
  enclosingScrollView: @nativeSelector "enclosingScrollView"
  scrollClipViewToPoint: @nativeSelector "scrollClipView:toPoint:"
  reflectScrolledClipView: @nativeSelector "reflectScrolledClipView:"

  # Contextual Menus
  menuForEvent: @nativeSelector "menuForEvent:"
  defaultMenu: @nativeSelector "defaultMenu"

  # Key-view Loop Management
  canBecomeKeyView: @nativeSelector "canBecomeKeyView"
  needsPanelToBecomeKey: @nativeSelector "needsPanelToBecomeKey"
  setNextKeyView: @nativeSelector "setNextKeyView:"
  nextKeyView: @nativeSelector "nextKeyView"
  nextValidKeyView: @nativeSelector "nextValidKeyView"
  previousKeyView: @nativeSelector "previousKeyView"
  previousValidKeyView: @nativeSelector "previousValidKeyView"

  # Printing
  print: @nativeSelector "print:"
  beginPage: @nativeSelector "beginPageInRect:atPlacement:"
  dataWithEPSInsideRect: @nativeSelector "dataWithEPSInsideRect:"
  dataWithPDFInsideRect: @nativeSelector "dataWithPDFInsideRect:"
  printJobTitle: @nativeSelector "printJobTitle"
  pageFooter: @nativeSelector "pageFooter"
  pageHeader: @nativeSelector "pageHeader"
  writeEPS: @nativeSelector "writeEPSInsideRect:toPasteboard:"
  writePDF: @nativeSelector "writePDFInsideRect:toPasteboard:"
  drawPageBorderWithSize: @nativeSelector "drawPageBorderWithSize:"
  drawSheetBorderWithSize: @nativeSelector "drawSheetBorderWithSize:"

  # Pagination
  heightAdjustLimit: @nativeSelector "heightAdjustLimit"
  widthAdjustLimit: @nativeSelector "widthAdjustLimit"
  adjustPageWidth: @nativeSelector "adjustPageWidthNew:left:right:limit:"
  adjustPageHeight: @nativeSelector "adjustPageHeightNew:top:bottom:limit:"
  knowsPageRange: @nativeSelector "knowsPageRange:"
  rectForPage: @nativeSelector "rectForPage:"
  locationOfPrintRect: @nativeSelector "locationOfPrintRect:"

  # Writing Conforming Rendering Instructions
  beginDocument: @nativeSelector "beginDocument"
  endDocument: @nativeSelector "endDocument"
  endPage: @nativeSelector "endPage"

  # Core Animation Layer-Backing
  layer: @nativeSelector "layer"
  setLayer: @nativeSelector "setLayer:"
  wantsLayer: @nativeSelector "wantsLayer"
  setWantsLayer: @nativeSelector "setWantsLayer:"
  makeBackingLayer: @nativeSelector "makeBackingLayer"
  layerContentsPlacement: @nativeSelector "layerContentsPlacement"
  setLayerContentsPlacement: @nativeSelector "setLayerContentsPlacement:"
  layerContentsRedrawPolicy: @nativeSelector "layerContentsRedrawPolicy"
  setLayerContentsRedrawPolicy: @nativeSelector "setLayerContentsRedrawPolicy:"

  # Core Animation Layer Properties
  setFrameCenterRotation: @nativeSelector "setFrameCenterRotation:"
  frameCenterRotation: @nativeSelector "frameCenterRotation"
  setAlphaValue: @nativeSelector "setAlphaValue:"
  alphaValue: @nativeSelector "alphaValue"
  setBackgroundFilters: @nativeSelector "setBackgroundFilters:"
  backgroundFilters: @nativeSelector "backgroundFilters"
  setCompositingFilter: @nativeSelector "setCompositingFilter:"
  compositingFilter: @nativeSelector "compositingFilter"
  setContentFilters: @nativeSelector "setContentFilters:"
  contentFilters: @nativeSelector "contentFilters"
  setShadow: @nativeSelector "setShadow:"
  shadow: @nativeSelector "shadow"

  # Displaying Definition Windows
  showDefinitionForAttributedStringAtPoint: @nativeSelector "showDefinitionForAttributedString:atPoint:"
  showDefinitionForAttributedString: @nativeSelector "showDefinitionForAttributedString:range:options:baselineOriginProvider:"

  # Touch Event Handling
  @instanceProperty "acceptsTouchEvents"
  @instanceProperty "wantsRestingTouches"

  # Drawing Find Indicator
  isDrawingFindIndicator: @nativeSelector "isDrawingFindIndicator"

  # Managing Constraints
  constraints: @nativeSelector "constraints"
  addConstraint: @nativeSelector "addConstraint:"
  addConstraints: @nativeSelector "addConstraints:"
  removeConstraint: @nativeSelector "removeConstraint:"
  removeConstraints: @nativeSelector "removeConstraints:"

  # Measuring in Constraint-Based Layout
  fittingSize: @nativeSelector "fittingSize"
  intrinsicContentSize: @nativeSelector "intrinsicContentSize"
  invalidateIntrinsicContentSize: @nativeSelector "invalidateIntrinsicContentSize"
  contentCompressionResistancePriority: @nativeSelector "contentCompressionResistancePriorityForOrientation:"
  setContentCompressionResistancePriority: @nativeSelector "setContentCompressionResistancePriority:forOrientation:"
  contentHuggingPriority: @nativeSelector "contentHuggingPriorityForOrientation:"
  setContentHuggingPriority: @nativeSelector "setContentHuggingPriority:forOrientation:"

  # Aligning Views with Constraint-Based Layout
  alignmentRectForFrame: @nativeSelector "alignmentRectForFrame:"
  frameForAlignmentRect: @nativeSelector "frameForAlignmentRect:"
  alignmentRectInsets: @nativeSelector "alignmentRectInsets"
  baselineOffsetFromBottom: @nativeSelector "baselineOffsetFromBottom"

  # Triggering Constraint-Based Layout
  needsLayout: @nativeSelector "needsLayout"
  setNeedsLayout: @nativeSelector "setNeedsLayout:"
  layout: @nativeSelector "layout"
  layoutSubtreeIfNeeded: @nativeSelector "layoutSubtreeIfNeeded"
  needsUpdateConstraints: @nativeSelector "needsUpdateConstraints"
  setNeedsUpdateConstraints: @nativeSelector "setNeedsUpdateConstraints:"
  updateConstraints: @nativeSelector "updateConstraints"
  updateConstraintsForSubtreeIfNeeded: @nativeSelector "updateConstraintsForSubtreeIfNeeded"

  # Opting in to Constraint-Based Layout
  requiresConstraintBasedLayout: @nativeSelector "requiresConstraintBasedLayout"
  translatesAutoresizingMaskIntoConstraints: @nativeSelector "translatesAutoresizingMaskIntoConstraints"
  setTranslatesAutoresizingMaskIntoConstraints: @nativeSelector "setTranslatesAutoresizingMaskIntoConstraints:"

  # Debugging Constraint-Based Layout

  # See Cocoa Autolayout Release Notes for more details on debugging constraint-based layout.

  constraintsAffectingLayoutForOrientation: @nativeSelector "constraintsAffectingLayoutForOrientation:"
  hasAmbiguousLayout: @nativeSelector "hasAmbiguousLayout"
  exerciseAmbiguityInLayout: @nativeSelector "exerciseAmbiguityInLayout"
