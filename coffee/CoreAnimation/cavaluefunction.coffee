# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAValueFunction = class CAValueFunction extends foundation.NSObject
  # Getting Value Function Properties
  @instanceProperty "name"

  # Creating and Initializing Value Functions
  @functionWithName: @nativeSelector "functionWithName:"

  @register()
