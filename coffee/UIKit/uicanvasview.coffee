# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UICanvasView"
class UICanvasView extends UIView

  constructor: (handle) ->
    super (if handle then handle else objc.allocInstance (@.constructor.name))
 
  @layerClass: -> coreanimation.CAEAGLLayer
  new ck.SelectorAttribute @layerClass, "layerClass", "##:"

  getContext: (name, args) ->
    if name is "2d"
      throw "UICanvasView doesn't support 2d rendering"
    else if name is "experimental-webgl" or name is "webgl"
      if !@context
        @context = objc.allocateGLContext @layer, args
      @context
    
new ck.RegisterAttribute UICanvasView, "UICanvasView"
exports.UICanvasView = UICanvasView