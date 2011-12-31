# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKViewController = class GLKViewController extends uikit.UIViewController
  @register()

  # Configuring the Frame Rate
  ck.instanceProperty @, "preferredFramesPerSecond"
  ck.instanceProperty @, "framesPerSecond"

  # Configuring the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GLKViewControllerDelegate) }

  # Controlling Frame Updates
  ck.instanceProperty @, "paused"
  ck.instanceProperty @, "pauseOnWillResignActive"
  ck.instanceProperty @, "resumeOnDidBecomeActive"

  # Obtaining Information About View Updates
  ck.instanceProperty @, "framesDisplayed"
  ck.instanceProperty @, "timeSinceFirstResume"
  ck.instanceProperty @, "timeSinceLastResume"
  ck.instanceProperty @, "timeSinceLastUpdate"
  ck.instanceProperty @, "timeSinceLastDraw"
