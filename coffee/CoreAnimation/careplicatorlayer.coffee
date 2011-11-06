# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAReplicatorLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Setting Instance Display Properties
  ck.addProperty @::, "instanceCount"
  ck.addProperty @::, "instanceDelay"
  ck.addProperty @::, "instanceTransform"

  # Modifying Instance Layer Geometry
  ck.addProperty @::, "preservesDepth"

  # Accessing Instance Color Values
  ck.addProperty @::, "instanceColor"
  ck.addProperty @::, "instanceRedOffset"
  ck.addProperty @::, "instanceGreenOffset"
  ck.addProperty @::, "instanceBlueOffset"
  ck.addProperty @::, "instanceAlphaOffset"

new ck.RegisterAttribute CAReplicatorLayer, "CAReplicatorLayer"
exports.CAReplicatorLayer = CAReplicatorLayer