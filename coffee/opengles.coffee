# This file is part of coffeekit.  for licensing information, see the LICENSE file

objc.requireFramework "OpenGLES"

foundation = require './foundation'
ck = require './coffeekit'

exports.EAGLRenderingAPI = EAGLRenderingAPI =
   OpenGLES1         : 1
   OpenGLES2         : 2
