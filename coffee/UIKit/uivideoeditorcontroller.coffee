# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIVideoEditorController"
exports.UIVideoEditorController = class UIVideoEditorController extends UINavigationController
  # Determining Editing Availability
  @canEditVideoAtPath: @nativeSelector "canEditVideoAtPath:"

  # Configuring the Editor
  @autoboxProperty  "delegate", UIVideoEditorControllerDelegate
  @instanceProperty "videoMaximumDuration"
  @instanceProperty "videoPath"
  @instanceProperty "videoQuality"

  @register()

