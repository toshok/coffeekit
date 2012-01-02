# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UICanvasView"
exports.UICanvasView = class UICanvasView extends UIView
  @layerClass: @nativeSelector("layerClass", -> coreAnimation.CAEAGLLayer).
                    returnType(-> ck.sig.Class)

  getContext: (name, args) ->
    if name is "2d"
      throw "UICanvasView doesn't support 2d rendering"
    else if name is "experimental-webgl" or name is "webgl"
      if !@context
        @context = objc.allocateGLContext @layer, args
      @context

  @register()
