# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIImageView"
exports.UIImageView = class UIImageView extends UIView
  @register()

  # Initializing a UIImageView Object
  initWithImage: objc.invokeSelector "initWithImage:"
  initWithImageAndHighlightedImage: objc.invokeSelector "initWithImage:highlightedImage:"

  # Image Data
  ck.instanceProperty @, "image"
  ck.instanceProperty @, "highlightedImage"

  # Animating Images
  ck.instanceProperty @, "animationImages"
  ck.instanceProperty @, "highlightedAnimationImages"
  ck.instanceProperty @, "animationDuration"
  ck.instanceProperty @, "animationRepeatCount"
  startAnimating: objc.invokeSelector "startAnimating"
  stopAnimating: objc.invokeSelector "stopAnimating"
  isAnimating: objc.invokeSelector "isAnimating"

  # Setting and Getting Attributes
  ck.instanceProperty @, "userInteractionEnabled"
  ck.instanceProperty @, "highlighted"
