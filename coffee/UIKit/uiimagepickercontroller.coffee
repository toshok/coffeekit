# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIImagePickerController"
exports.UIImagePickerController = class UIImagePickerController extends UINavigationController
  @register()

  # Setting the Picker Source
  @availableMediaTypes: objc.invokeSelector "availableMediaTypesForSourceType:"
  @isSourceTypeAvailable: objc.invokeSelector "isSourceTypeAvailable:"
  ck.instanceProperty @, "sourceType"

  # Configuring the Picker
  ck.instanceProperty @, "allowsEditing"
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIImagePickerControllerDelegate) }
  ck.instanceProperty @, "mediaTypes"
  ck.instanceProperty @, "allowsImageEditing" # Deprecated in iOS 3.1

  # Configuring the Video Capture Options
  ck.instanceProperty @, "videoQuality"
  ck.instanceProperty @, "videoMaximumDuration"

  # Customizing the Camera Controls
  ck.instanceProperty @, "showsCameraControls"
  ck.instanceProperty @, "cameraOverlayView"
  ck.instanceProperty @, "cameraViewTransform"

  # Capturing Still Images or Movies
  takePicture: objc.invokeSelector "takePicture"
  startVideoCapture: objc.invokeSelector "startVideoCapture"
  stopVideoCapture: objc.invokeSelector "stopVideoCapture"

  # Configuring the Camera
  ck.instanceProperty @, "cameraDevice"
  @isCameraDeviceAvailable: objc.invokeSelector "isCameraDeviceAvailable:"
  @availableCaptureModesForCameraDevice: objc.invokeSelector "availableCaptureModesForCameraDevice:"
  ck.instanceProperty @, "cameraCaptureMode"
  ck.instanceProperty @, "cameraFlashMode"
  @isFlashAvailableForCameraDevice: objc.invokeSelector "isFlashAvailableForCameraDevice:"
