# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAConstraintLayoutManager = class CAConstraintLayoutManager extends foundation.NSObject
  # Creating the Layout Manager
  @layoutManager: @nativeSelector "layoutManager"

  @register()
