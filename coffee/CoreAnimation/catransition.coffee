class CATransition extends NSObject

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Transition Start and End Point
  ck.objcProperty @::, "startProgress"
  ck.objcProperty @::, "endProgress"

  # Transition Properties
  ck.objcProperty @::, "type"
  ck.objcProperty @::, "subtype"

  # Custom Transition Filter
  ck.objcProperty @::, "filter"

new ck.RegisterAttribute CATransition, "CATransition"
exports.CATransition = CATransition