# This file is part of coffeekit.  for licensing information, see the LICENSE file

Protocol = foundation.Protocol

class GLKNamedEffect extends foundation.Protocol

  # Binding the Shader Program
  prepareToDraw:  Protocol.requiredMethod "prepareToDraw"

new ck.RegisterAttribute GLKNamedEffect, "GLKNamedEffect"
exports.GLKNamedEffect = GLKNamedEffect

