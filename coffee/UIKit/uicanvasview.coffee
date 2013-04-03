# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UICanvasView"
exports.UICanvasView = class UICanvasView extends UIView
  @layerClass: @nativeSelector("layerClass").
                       returns(-> ck.sig.Class).
                          impl -> coreAnimation.CAEAGLLayer
  getContext: (name, args) ->
    if name is "experimental-webgl" or name is "webgl"
      if !@context
        @context = objc.allocateGLContext @layer, args
      @context
    else
      throw "UICanvasView only supports webgl rendering"

  @register()
