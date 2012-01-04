# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKViewController = class GLKViewController extends uikit.UIViewController
  # Configuring the Frame Rate
  @instanceProperty "preferredFramesPerSecond"
  @instanceProperty "framesPerSecond"

  # Configuring the Delegate
  @autoboxProperty "delegate", GLKViewControllerDelegate

  # Controlling Frame Updates
  @instanceProperty "paused", { get: "isPaused" }
  @instanceProperty "pauseOnWillResignActive"
  @instanceProperty "resumeOnDidBecomeActive"

  # Obtaining Information About View Updates
  @instanceProperty "framesDisplayed"
  @instanceProperty "timeSinceFirstResume"
  @instanceProperty "timeSinceLastResume"
  @instanceProperty "timeSinceLastUpdate"
  @instanceProperty "timeSinceLastDraw"

  @register()
