# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIImagePickerController"
exports.UIImagePickerController = class UIImagePickerController extends UINavigationController
  # Setting the Picker Source
  @availableMediaTypes:   @nativeSelector "availableMediaTypesForSourceType:"
  @isSourceTypeAvailable: @nativeSelector "isSourceTypeAvailable:"
  @instanceProperty "sourceType"

  # Configuring the Picker
  @instanceProperty "allowsEditing"
  @autoboxProperty  "delegate", UIImagePickerControllerDelegate
  @instanceProperty "mediaTypes"
  @instanceProperty "allowsImageEditing" # Deprecated in iOS 3.1

  # Configuring the Video Capture Options
  @instanceProperty "videoQuality"
  @instanceProperty "videoMaximumDuration"

  # Customizing the Camera Controls
  @instanceProperty "showsCameraControls"
  @instanceProperty "cameraOverlayView"
  @instanceProperty "cameraViewTransform"

  # Capturing Still Images or Movies
  takePicture:       @nativeSelector "takePicture"
  startVideoCapture: @nativeSelector "startVideoCapture"
  stopVideoCapture:  @nativeSelector "stopVideoCapture"

  # Configuring the Camera
  @instanceProperty "cameraDevice"
  @instanceProperty "cameraCaptureMode"
  @instanceProperty "cameraFlashMode"
  @isCameraDeviceAvailable:              @nativeSelector "isCameraDeviceAvailable:"
  @availableCaptureModesForCameraDevice: @nativeSelector "availableCaptureModesForCameraDevice:"
  @isFlashAvailableForCameraDevice:      @nativeSelector "isFlashAvailableForCameraDevice:"

  @register()
