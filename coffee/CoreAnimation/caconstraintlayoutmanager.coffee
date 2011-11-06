# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAConstraintLayoutManager extends foundation.NSObject

  # Creating the Layout Manager
  @layoutManager: objc.invokeSelector "layoutManager"

new ck.RegisterAttribute CAConstraintLayoutManager, "CAConstraintLayoutManager"
exports.CAConstraintLayoutManager = CAConstraintLayoutManager