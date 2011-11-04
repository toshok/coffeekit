#console.log "UIImagePickerController"
class UIImagePickerController extends UINavigationController

  # Setting the Picker Source
  @availableMediaTypes: objc.invokeSelector ("availableMediaTypesForSourceType:")
  @isSourceTypeAvailable: objc.invokeSelector ("isSourceTypeAvailable:")
  ck.addProperty @::, "sourceType"

  # Configuring the Picker
  ck.addProperty @::, "allowsEditing"
  ck.addProperty @::, "delegate"
  ck.addProperty @::, "mediaTypes"
  ck.addProperty @::, "allowsImageEditing" # Deprecated in iOS 3.1

  # Configuring the Video Capture Options
  ck.addProperty @::, "videoQuality"
  ck.addProperty @::, "videoMaximumDuration"

  # Customizing the Camera Controls
  ck.addProperty @::, "showsCameraControls"
  ck.addProperty @::, "cameraOverlayView"
  ck.addProperty @::, "cameraViewTransform"

  # Capturing Still Images or Movies
  takePicture: objc.invokeSelector ("takePicture")
  startVideoCapture: objc.invokeSelector ("startVideoCapture")
  stopVideoCapture: objc.invokeSelector ("stopVideoCapture")

  # Configuring the Camera
  ck.addProperty @::, "cameraDevice"
  @isCameraDeviceAvailable: objc.invokeSelector ("isCameraDeviceAvailable:")
  @availableCaptureModesForCameraDevice: objc.invokeSelector ("availableCaptureModesForCameraDevice:")
  ck.addProperty @::, "cameraCaptureMode"
  ck.addProperty @::, "cameraFlashMode"
  @isFlashAvailableForCameraDevice: objc.invokeSelector ("isFlashAvailableForCameraDevice:")

new ck.RegisterAttribute UIImagePickerController, "UIImagePickerController"
exports.UIImagePickerController = UIImagePickerController
