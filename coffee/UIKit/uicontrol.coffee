#console.log "UIControl"
class UIControl extends UIView

  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Preparing and Sending Action Messages
  sendAction: objc.invokeSelector ("sendAction:to:forEvent:")
  sendActionsForControlEvents: objc.invokeSelector ("sendActionsForControlEvents:")
  addTarget: objc.invokeSelector ("addTarget:action:forControlEvents:")
  removeTarget: objc.invokeSelector ("removeTarget:action:forControlEvents:")
  actionsForTarget: objc.invokeSelector ("actionsForTarget:forControlEvent:")

  # FIXME these two should be properties
  allTargets: objc.invokeSelector ("allTargets")
  allControlEvents: objc.invokeSelector ("allControlEvents")

  # Setting and Getting Control Attributes
  ck.addProperty @::, "state"
  ck.addProperty @::, "enabled"
  ck.addProperty @::, "selected"
  ck.addProperty @::, "highlighted"
  ck.addProperty @::, "contentVerticalAlignment"
  ck.addProperty @::, "contentHorizontalAlignment"

  # Tracking Touches and Redrawing Controls
  beginTrackingWithTouch: objc.invokeSelector ("beginTrackingWithTouch:withEvent:")
  continueTrackingWithTouch: objc.invokeSelector ("continueTrackingWithTouch:withEvent:")
  endTrackingWithTouch: objc.invokeSelector ("endTrackingWithTouch:withEvent:")
  cancelTrackingWithEvent: objc.invokeSelector ("cancelTrackingWithEvent:")

  ck.addProperty @::, "tracking"
  ck.addProperty @::, "touchInside"

new ck.RegisterAttribute UIControl, "UIControl"
exports.UIControl = UIControl

class UIControlProxy extends foundation.NSObject
  constructor: (fn) ->
                 super (objc.allocInstance(@.constructor.name))
                 @fn = fn

  toString: -> "[UIControlProxy #{@handle}]"

  proxyAction: -> @fn()
  new ck.SelectorAttribute @::proxyAction, "action"
new ck.RegisterAttribute UIControlProxy, "UIControlProxy"
