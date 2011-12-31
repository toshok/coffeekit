# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSRunLoop = class NSRunLoop extends NSObject
  @register()

  # Accessing Run Loops and Modes
  ck.staticProperty @, "currentRunLoop", set: null
  ck.instanceProperty @, "currentMode", set: null
  limitDate: objc.invokeSelector "limitDateForMode:"
  ck.staticProperty @, "mainRunLoop", set: null
  getCFRunLoop: objc.invokeSelector "getCFRunLoop"

  # Managing Timers
  addTimer: objc.invokeSelector "addTimer:forMode:"

  # Managing Ports
  addPort: objc.invokeSelector "addPort:forMode:"
  removePort: objc.invokeSelector "removePort:forMode:"

  # Running a Loop
  run: objc.invokeSelector "run"
  runMode: objc.invokeSelector "runMode:beforeDate:"
  runUntilDate: objc.invokeSelector "runUntilDate:"
  acceptInputForMode: objc.invokeSelector "acceptInputForMode:beforeDate:"

  # Scheduling and Canceling Messages
  performSelector: objc.invokeSelector "performSelector:target:argument:order:modes:"
  cancelPerformSelector: objc.invokeSelector "cancelPerformSelector:target:argument:"
  cancelPerformSelectors: objc.invokeSelector "cancelPerformSelectorsWithTarget:"
