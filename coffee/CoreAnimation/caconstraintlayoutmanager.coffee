# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAConstraintLayoutManager = class CAConstraintLayoutManager extends foundation.NSObject
  @register()

  # Creating the Layout Manager
  @layoutManager: objc.invokeSelector "layoutManager"
