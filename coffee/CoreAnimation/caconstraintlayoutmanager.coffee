class CAConstraintLayoutManager extends NSObject

  # Creating the Layout Manager
  @layoutManager: objc.generateFunctionFromSelector ("layoutManager")

new ck.RegisterAttribute CAConstraintLayoutManager, "CAConstraintLayoutManager"
exports.CAConstraintLayoutManager = CAConstraintLayoutManager