# This file is part of coffeekit.  for licensing information, see the LICENSE file

Protocol = foundation.Protocol

exports.GLKNamedEffect = class GLKNamedEffect extends foundation.Protocol
  # Binding the Shader Program
  prepareToDraw:  Protocol.requiredMethod "prepareToDraw"

  @register()
