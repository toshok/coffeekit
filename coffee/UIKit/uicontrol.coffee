# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIControl"
exports.UIControl = class UIControl extends UIView
  @register()

  # Preparing and Sending Action Messages
  sendAction: objc.invokeSelector "sendAction:to:forEvent:"
  sendActionsForControlEvents: objc.invokeSelector "sendActionsForControlEvents:"
  addTarget: objc.invokeSelector "addTarget:action:forControlEvents:"
  removeTarget: objc.invokeSelector "removeTarget:action:forControlEvents:"
  actionsForTarget: objc.invokeSelector "actionsForTarget:forControlEvent:"

  # FIXME these two should be properties
  allTargets: objc.invokeSelector "allTargets"
  allControlEvents: objc.invokeSelector "allControlEvents"

  # Setting and Getting Control Attributes
  ck.instanceProperty @, "state"
  ck.instanceProperty @, "enabled"
  ck.instanceProperty @, "selected"
  ck.instanceProperty @, "highlighted"
  ck.instanceProperty @, "contentVerticalAlignment"
  ck.instanceProperty @, "contentHorizontalAlignment"

  # Tracking Touches and Redrawing Controls
  beginTrackingWithTouch: objc.invokeSelector "beginTrackingWithTouch:withEvent:"
  continueTrackingWithTouch: objc.invokeSelector "continueTrackingWithTouch:withEvent:"
  endTrackingWithTouch: objc.invokeSelector "endTrackingWithTouch:withEvent:"
  cancelTrackingWithEvent: objc.invokeSelector "cancelTrackingWithEvent:"

  ck.instanceProperty @, "tracking"
  ck.instanceProperty @, "touchInside"

class UIControlProxy extends foundation.NSObject
  @register()

  constructor: (fn) ->
                 super()
                 @fn = fn

  proxyAction: ck.exposeSelector("action", -> @fn())

class UIControlProxy1 extends foundation.NSObject
  @register()

  constructor: (fn) ->
                 super()
                 @fn = fn

  proxyAction: ck.exposeSelector("action", "v@:@", (v) -> @fn v)
