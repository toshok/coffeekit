# This file is part of coffeekit.  for licensing information, see the LICENSE file

objc.requireFramework "GLKit"

foundation = require "./foundation"
uikit = require "./uikit"
gles = require "./opengles"
ck = require "./coffeekit"

exports.GLKViewDrawableColorFormat = GLKViewDrawableColorFormat =
   rgba8888 : 0,
   rgb565   : 1

exports.GLKViewDrawableDepthFormat = GLKViewDrawableDepthFormat =
   depthNone : 0,
   depth16   : 1,
   depth24   : 2

exports.GLKViewDrawableStencilFormat = GLKViewDrawableStencilFormat =
   stencilNone : 0,
   stencil8    : 1

exports.GLKViewDrawableMultisample = GLKViewDrawableMultisample =
   multisampleNone : 0,
   multisample4X   : 1

exports.GLKVertexAttrib = GLKVertexAttrib =
   position  : 0,
   normal    : 1,
   color     : 2,
   texCoord0 : 3,
   texCoord1 : 4
