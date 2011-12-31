# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIVideoEditorController"
exports.UIVideoEditorController = class UIVideoEditorController extends UINavigationController
  @register()

  # Determining Editing Availability
  @canEditVideoAtPath: objc.invokeSelector "canEditVideoAtPath:"

  # Configuring the Editor
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIVideoEditorControllerDelegate) }
  ck.instanceProperty @, "videoMaximumDuration"
  ck.instanceProperty @, "videoPath"
  ck.instanceProperty @, "videoQuality"

