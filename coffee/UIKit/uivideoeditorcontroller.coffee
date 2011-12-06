# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIVideoEditorController"
class UIVideoEditorController extends UINavigationController

  # Determining Editing Availability
  @canEditVideoAtPath: objc.invokeSelector "canEditVideoAtPath:"

  # Configuring the Editor
  ck.addProperty @::, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIVideoEditorControllerDelegate) }
  ck.addProperty @::, "videoMaximumDuration"
  ck.addProperty @::, "videoPath"
  ck.addProperty @::, "videoQuality"

new ck.RegisterAttribute UIVideoEditorController, "UIVideoEditorController"
exports.UIVideoEditorController = UIVideoEditorController
