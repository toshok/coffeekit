# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAReplicationLayer = class CAReplicatorLayer extends CALayer
  @register()

  # Setting Instance Display Properties
  ck.instanceProperty @, "instanceCount"
  ck.instanceProperty @, "instanceDelay"
  ck.instanceProperty @, "instanceTransform"

  # Modifying Instance Layer Geometry
  ck.instanceProperty @, "preservesDepth"

  # Accessing Instance Color Values
  ck.instanceProperty @, "instanceColor"
  ck.instanceProperty @, "instanceRedOffset"
  ck.instanceProperty @, "instanceGreenOffset"
  ck.instanceProperty @, "instanceBlueOffset"
  ck.instanceProperty @, "instanceAlphaOffset"
