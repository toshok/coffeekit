#console.log "UIImageView"
class UIImageView extends UIView

  # Initializing a UIImageView Object
  initWithImage: objc.invokeSelector "initWithImage:"
  initWithImageAndHighlightedImage: objc.invokeSelector "initWithImage:highlightedImage:"

  # Image Data
  ck.addProperty @::, "image"
  ck.addProperty @::, "highlightedImage"

  # Animating Images
  ck.addProperty @::, "animationImages"
  ck.addProperty @::, "highlightedAnimationImages"
  ck.addProperty @::, "animationDuration"
  ck.addProperty @::, "animationRepeatCount"
  startAnimating: objc.invokeSelector "startAnimating"
  stopAnimating: objc.invokeSelector "stopAnimating"
  isAnimating: objc.invokeSelector "isAnimating"

  # Setting and Getting Attributes
  ck.addProperty @::, "userInteractionEnabled"
  ck.addProperty @::, "highlighted"

new ck.RegisterAttribute UIImageView, "UIImageView"
exports.UIImageView = UIImageView
