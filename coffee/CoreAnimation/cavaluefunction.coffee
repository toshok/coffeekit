# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAValueFunction = class CAValueFunction extends foundation.NSObject
  @register()

  # Getting Value Function Properties
  ck.instanceProperty @, "name"

  # Creating and Initializing Value Functions
  @functionWithName: objc.invokeSelector "functionWithName:"
