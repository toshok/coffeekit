# This file is part of coffeekit.  for licensing information, see the LICENSE file

class NSAnimation extends foundation.NSObject

  # Initializing an NSAnimation Object
  initWithDuration:animationCurve: objc.invokeSelector "initWithDuration:animationCurve:"

  # Configuring an Animation
  setAnimationBlockingMode: objc.invokeSelector "setAnimationBlockingMode:"
  animationBlockingMode: objc.invokeSelector "animationBlockingMode"
  runLoopModesForAnimating: objc.invokeSelector "runLoopModesForAnimating"
  setAnimationCurve: objc.invokeSelector "setAnimationCurve:"
  animationCurve: objc.invokeSelector "animationCurve"
  setDuration: objc.invokeSelector "setDuration:"
  duration: objc.invokeSelector "duration"
  setFrameRate: objc.invokeSelector "setFrameRate:"
  frameRate: objc.invokeSelector "frameRate"

  # Managing the Delegate
  setDelegate: objc.invokeSelector "setDelegate:"
  delegate: objc.invokeSelector "delegate"

  # Controlling and Monitoring an Animation
  startAnimation: objc.invokeSelector "startAnimation"
  stopAnimation: objc.invokeSelector "stopAnimation"
  isAnimating: objc.invokeSelector "isAnimating"
  setCurrentProgress: objc.invokeSelector "setCurrentProgress:"
  currentProgress: objc.invokeSelector "currentProgress"
  currentValue: objc.invokeSelector "currentValue"

  # Managing Progress Marks
  addProgressMark: objc.invokeSelector "addProgressMark:"
  removeProgressMark: objc.invokeSelector "removeProgressMark:"
  setProgressMarks: objc.invokeSelector "setProgressMarks:"
  progressMarks: objc.invokeSelector "progressMarks"

  # Linking Animations Together
  startWhenAnimationReachesProgress: objc.invokeSelector "startWhenAnimation:reachesProgress:"
  stopWhenAnimationReachesProgress: objc.invokeSelector "stopWhenAnimation:reachesProgress:"
  clearStartAnimation: objc.invokeSelector "clearStartAnimation"
  clearStopAnimation: objc.invokeSelector "clearStopAnimation"

new ck.RegisterAttribute NSAnimation, "NSAnimation"
exports.NSAnimation = NSAnimation
