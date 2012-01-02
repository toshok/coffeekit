# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIImageView"
exports.UIImageView = class UIImageView extends UIView
  # Initializing a UIImageView Object
  initWithImage:                    @nativeSelector "initWithImage:"
  initWithImageAndHighlightedImage: @nativeSelector "initWithImage:highlightedImage:"

  # Image Data
  @instanceProperty "image"
  @instanceProperty "highlightedImage"

  # Animating Images
  @instanceProperty "animationImages"
  @instanceProperty "highlightedAnimationImages"
  @instanceProperty "animationDuration"
  @instanceProperty "animationRepeatCount"
  startAnimating:   @nativeSelector "startAnimating"
  stopAnimating:    @nativeSelector "stopAnimating"
  isAnimating:      @nativeSelector "isAnimating"

  # Setting and Getting Attributes
  @instanceProperty "userInteractionEnabled"
  @instanceProperty "highlighted"

  @register()
