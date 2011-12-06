# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GLKViewController extends uikit.UIViewController
  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Configuring the Frame Rate
  ck.addProperty @::, "preferredFramesPerSecond"
  ck.addProperty @::, "framesPerSecond"

  # Configuring the Delegate
  ck.addProperty @::, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GLKViewControllerDelegate) }

  # Controlling Frame Updates
  ck.addProperty @::, "paused"
  ck.addProperty @::, "pauseOnWillResignActive"
  ck.addProperty @::, "resumeOnDidBecomeActive"

  # Obtaining Information About View Updates
  ck.addProperty @::, "framesDisplayed"
  ck.addProperty @::, "timeSinceFirstResume"
  ck.addProperty @::, "timeSinceLastResume"
  ck.addProperty @::, "timeSinceLastUpdate"
  ck.addProperty @::, "timeSinceLastDraw"

new ck.RegisterAttribute GLKViewController, "GLKViewController"
exports.GLKViewController = GLKViewController
