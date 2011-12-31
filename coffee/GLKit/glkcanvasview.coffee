# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GLKCanvasView"
exports.GLKCanvasView = class GLKCanvasView extends GLKView
  @register()

  getContext: (name, args) ->
    if name is "2d"
      throw "GLKCanvasView doesn't support 2d rendering"
    else if name is "experimental-webgl" or name is "webgl"
      if !@webglcontext
        @context = new gles.EAGLContext().initWithAPI gles.EAGLRenderingAPI.OpenGLES2
        @webglcontext = objc.allocateWebGLRenderingContext @context
      @webglcontext

  @::__defineGetter__ "width", -> return @frame.width
  @::__defineGetter__ "height", -> return @frame.height
