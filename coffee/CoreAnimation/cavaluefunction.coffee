# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAValueFunction extends foundation.NSObject

  # Getting Value Function Properties
  ck.addProperty @::, "name"

  # Creating and Initializing Value Functions
  @functionWithName: objc.invokeSelector "functionWithName:"

new ck.RegisterAttribute CAValueFunction, "CAValueFunction"
exports.CAValueFunction = CAValueFunction