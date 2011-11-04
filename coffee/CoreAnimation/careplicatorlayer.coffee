class CAReplicatorLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Setting Instance Display Properties
  ck.objcProperty @::, "instanceCount"
  ck.objcProperty @::, "instanceDelay"
  ck.objcProperty @::, "instanceTransform"

  # Modifying Instance Layer Geometry
  ck.objcProperty @::, "preservesDepth"

  # Accessing Instance Color Values
  ck.objcProperty @::, "instanceColor"
  ck.objcProperty @::, "instanceRedOffset"
  ck.objcProperty @::, "instanceGreenOffset"
  ck.objcProperty @::, "instanceBlueOffset"
  ck.objcProperty @::, "instanceAlphaOffset"

new ck.RegisterAttribute CAReplicatorLayer, "CAReplicatorLayer"
exports.CAReplicatorLayer = CAReplicatorLayer