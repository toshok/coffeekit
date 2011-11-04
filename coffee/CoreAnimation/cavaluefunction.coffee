class CAValueFunction extends NSObject

  # Getting Value Function Properties
  ck.objcProperty @::, "name"

  # Creating and Initializing Value Functions
  @functionWithName: objc.generateFunctionFromSelector ("functionWithName:")

new ck.RegisterAttribute CAValueFunction, "CAValueFunction"
exports.CAValueFunction = CAValueFunction