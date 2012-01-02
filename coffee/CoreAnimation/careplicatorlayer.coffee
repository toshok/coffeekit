# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAReplicationLayer = class CAReplicatorLayer extends CALayer
  # Setting Instance Display Properties
  @instanceProperty "instanceCount"
  @instanceProperty "instanceDelay"
  @instanceProperty "instanceTransform"

  # Modifying Instance Layer Geometry
  @instanceProperty "preservesDepth"

  # Accessing Instance Color Values
  @instanceProperty "instanceColor"
  @instanceProperty "instanceRedOffset"
  @instanceProperty "instanceGreenOffset"
  @instanceProperty "instanceBlueOffset"
  @instanceProperty "instanceAlphaOffset"

  @register()
