# This file is part of coffeekit.  for licensing information, see the LICENSE file

objc.requireFramework "GLKit"

foundation = require "./foundation"
uikit = require "./uikit"
gles = require "./opengles"
ck = require "./coffeekit"

exports.GLKViewDrawableColorFormat = GLKViewDrawableColorFormat =
   RGBA8888 : 0,
   RGB565   : 1

exports.GLKViewDrawableDepthFormat = GLKViewDrawableDepthFormat =
   DepthNone : 0,
   Depth16   : 1,
   Depth24   : 2

exports.GLKViewDrawableStencilFormat = GLKViewDrawableStencilFormat =
   StencilNone : 0,
   Stencil8    : 1

exports.GLKViewDrawableMultisample = GLKViewDrawableMultisample =
   MultisampleNone : 0,
   Multisample4X   : 1

exports.GLKVertexAttrib = GLKVertexAttrib =
   GLKVertexAttribPosition  : 0,
   GLKVertexAttribNormal    : 1,
   GLKVertexAttribColor     : 2,
   GLKVertexAttribTexCoord0 : 3,
   GLKVertexAttribTexCoord1 : 4

