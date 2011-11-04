# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UICanvasView"
class UICanvasView extends UIView

  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))
 
  toString: -> "UICanvasView #{@handle}"

  @layerClass: -> coreanimation.CAEAGLLayer

  getContext: (name) ->
    if name is "2d"
      throw "UICanvasView doesn't support 2d rendering"
    else if name is "experimental-webgl"
      console.log "hurray"   
    
