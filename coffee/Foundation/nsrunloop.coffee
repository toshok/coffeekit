# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "NSRunLoop"

exports.NSRunLoop = class NSRunLoop extends NSObject
  constructor: ->
        super
  # Accessing Run Loops and Modes
  @staticProperty "currentRunLoop", set: null
  @instanceProperty "currentMode", set: null
  limitDate: @nativeSelector("limitDateForMode:").
                     returns(-> ck.sig.Void).
                      params( -> [ ck.sig.NSString ])
  @staticProperty "mainRunLoop", set: null
  getCFRunLoop: @nativeSelector "getCFRunLoop"

  # Managing Timers
  addTimer: @nativeSelector "addTimer:forMode:"

  # Managing Ports
  addPort: @nativeSelector "addPort:forMode:"
  removePort: @nativeSelector "removePort:forMode:"

  # Running a Loop
  run: @nativeSelector "run"
  runMode: @nativeSelector "runMode:beforeDate:"
  runUntilDate: @nativeSelector "runUntilDate:"
  acceptInputForMode: @nativeSelector "acceptInputForMode:beforeDate:"

  # Scheduling and Canceling Messages
  performSelector: @nativeSelector "performSelector:target:argument:order:modes:"
  cancelPerformSelector: @nativeSelector "cancelPerformSelector:target:argument:"
  cancelPerformSelectors: @nativeSelector "cancelPerformSelectorsWithTarget:"

ck.register NSRunLoop
