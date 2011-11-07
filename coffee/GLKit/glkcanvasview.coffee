# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GLKCanvasView"
class GLKCanvasView extends GLKView

  constructor: (handle) ->
    super (if handle then handle else objc.allocInstance (@.constructor.name))
 
  getContext: (name, args) ->
    if name is "2d"
      throw "GLKCanvasView doesn't support 2d rendering"
    else if name is "experimental-webgl" or name is "webgl"
      if !@webglcontext
        @context = new gles.EAGLContext().initWithAPI gles.EAGLRenderingAPI.OpenGLES2
        @webglcontext = objc.allocateWebGLRenderingContext @context
      @webglcontext
    
new ck.RegisterAttribute GLKCanvasView, "GLKCanvasView"
exports.GLKCanvasView = GLKCanvasView