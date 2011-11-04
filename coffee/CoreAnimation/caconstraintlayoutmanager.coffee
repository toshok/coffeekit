# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAConstraintLayoutManager extends NSObject

  # Creating the Layout Manager
  @layoutManager: objc.generateFunctionFromSelector ("layoutManager")

new ck.RegisterAttribute CAConstraintLayoutManager, "CAConstraintLayoutManager"
exports.CAConstraintLayoutManager = CAConstraintLayoutManager