# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIControl"
exports.UIControl = class UIControl extends UIView
  # Preparing and Sending Action Messages
  sendAction:                  @nativeSelector "sendAction:to:forEvent:"
  sendActionsForControlEvents: @nativeSelector "sendActionsForControlEvents:"
  addTarget:                   @nativeSelector "addTarget:action:forControlEvents:"
  removeTarget:                @nativeSelector "removeTarget:action:forControlEvents:"
  actionsForTarget:            @nativeSelector "actionsForTarget:forControlEvent:"

  # FIXME these two should be properties
  allTargets:                  @nativeSelector "allTargets"
  allControlEvents:            @nativeSelector "allControlEvents"

  # Setting and Getting Control Attributes
  @instanceProperty            "state"
  @instanceProperty            "enabled"
  @instanceProperty            "selected"
  @instanceProperty            "highlighted"
  @instanceProperty            "contentVerticalAlignment"
  @instanceProperty            "contentHorizontalAlignment"

  # Tracking Touches and Redrawing Controls
  beginTrackingWithTouch:      @nativeSelector "beginTrackingWithTouch:withEvent:"
  continueTrackingWithTouch:   @nativeSelector "continueTrackingWithTouch:withEvent:"
  endTrackingWithTouch:        @nativeSelector "endTrackingWithTouch:withEvent:"
  cancelTrackingWithEvent:     @nativeSelector "cancelTrackingWithEvent:"

  @instanceProperty            "tracking"
  @instanceProperty            "touchInside"

  @register()

class UIControlProxy extends foundation.NSObject
  constructor: (fn) ->
                 super()
                 @fn = fn

  proxyAction: @nativeSelector("action", -> @fn()).
                    returnType(-> ck.sig.Void)

  @register()

class UIControlProxy1 extends foundation.NSObject
  constructor: (fn) ->
                 super()
                 @fn = fn

  proxyAction: @nativeSelector("action", (v)-> @fn(v)).
                    returnType(-> ck.sig.Void).
                    paramTypes(-> [foundation.NSObject])

  @register()

