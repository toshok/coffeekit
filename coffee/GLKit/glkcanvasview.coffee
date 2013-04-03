# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GLKCanvasView"
exports.GLKCanvasView = class GLKCanvasView extends GLKView
  getContext: (name, args) ->
    if name is "experimental-webgl" or name is "webgl"
      if !@webglcontext
        @context = new gles.EAGLContext().initWithAPI gles.EAGLRenderingAPI.OpenGLES2
        @webglcontext = objc.allocateWebGLRenderingContext @context
      @webglcontext
    else
      throw "GLKCanvasView only supports webgl rendering"


  @instanceProperty "width", get: (-> return @frame.width), set: null
  @instanceProperty "height", get: (-> return @frame.height), set: null

  @register()
