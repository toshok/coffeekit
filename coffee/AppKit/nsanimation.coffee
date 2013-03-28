# This file is part of coffeekit.  for licensing information, see the LICENSE file

ck.register exports.NSAnimation = class NSAnimation extends foundation.NSObject
  # Initializing an NSAnimation Object
  initWithDuration:animationCurve: @nativeSelector "initWithDuration:animationCurve:"

  # Configuring an Animation
  setAnimationBlockingMode: @nativeSelector "setAnimationBlockingMode:"
  animationBlockingMode: @nativeSelector "animationBlockingMode"
  runLoopModesForAnimating: @nativeSelector "runLoopModesForAnimating"
  setAnimationCurve: @nativeSelector "setAnimationCurve:"
  animationCurve: @nativeSelector "animationCurve"
  setDuration: @nativeSelector "setDuration:"
  duration: @nativeSelector "duration"
  setFrameRate: @nativeSelector "setFrameRate:"
  frameRate: @nativeSelector "frameRate"

  # Managing the Delegate
  setDelegate: @nativeSelector "setDelegate:"
  delegate: @nativeSelector "delegate"

  # Controlling and Monitoring an Animation
  startAnimation: @nativeSelector "startAnimation"
  stopAnimation: @nativeSelector "stopAnimation"
  isAnimating: @nativeSelector "isAnimating"
  setCurrentProgress: @nativeSelector "setCurrentProgress:"
  currentProgress: @nativeSelector "currentProgress"
  currentValue: @nativeSelector "currentValue"

  # Managing Progress Marks
  addProgressMark: @nativeSelector "addProgressMark:"
  removeProgressMark: @nativeSelector "removeProgressMark:"
  setProgressMarks: @nativeSelector "setProgressMarks:"
  progressMarks: @nativeSelector "progressMarks"

  # Linking Animations Together
  startWhenAnimationReachesProgress: @nativeSelector "startWhenAnimation:reachesProgress:"
  stopWhenAnimationReachesProgress: @nativeSelector "stopWhenAnimation:reachesProgress:"
  clearStartAnimation: @nativeSelector "clearStartAnimation"
  clearStopAnimation: @nativeSelector "clearStopAnimation"
