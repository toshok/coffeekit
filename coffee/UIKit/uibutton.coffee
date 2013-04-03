# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIButton"
exports.UIButton = class UIButton extends UIControl
  # Creating Buttons
  @buttonWithType:     @nativeSelector "buttonWithType:"

  # Configuring Button Title
  @instanceProperty    "titleLabel"
  @instanceProperty    "reversesTitleShadowWhenHighlighted"
  setTitle:            @nativeSelector "setTitle:forState:"
  getTitle:            @nativeSelector "titleForState:"
  setTitleColor:       @nativeSelector("setTitleColor:forState:").makeUIAppearance()
  getTitleColor:       @nativeSelector("titleColorForState:").makeUIAppearance()
  setTitleShadowColor: @nativeSelector "setTitleShadowColor:forState:"
  getTitleShadowColor: @nativeSelector "titleShadowColorForState:"

  @instanceProperty "font" # Deprecated in iOS 3.0
  @instanceProperty    "lineBreakMode" # Deprecated in iOS 3.0
  @instanceProperty    "titleShadowOffset" # Deprecated in iOS 3.0

  # Configuring Button Presentation
  @instanceProperty    "adjustsImageWhenHighlighted"
  @instanceProperty    "adjustsImageWhenDisabled"
  @instanceProperty    "showsTouchWhenHighlighted"
  setBackgroundImage:  @nativeSelector "setBackgroundImage:forState:"
  getBbackgroundImage: @nativeSelector "backgroundImageForState:"
  setImage:            @nativeSelector "setImage:forState:"
  getImage:            @nativeSelector "imageForState:"
  @instanceProperty("tintColor").makeUIAppearance()

  # Configuring Edge Insets
  @instanceProperty    "contentEdgeInsets"
  @instanceProperty    "titleEdgeInsets"
  @instanceProperty    "imageEdgeInsets"

  # Getting the Current State
  @instanceProperty    "buttonType"
  @instanceProperty    "currentTitle"
  @instanceProperty    "currentTitleColor"
  @instanceProperty    "currentTitleShadowColor"
  @instanceProperty    "currentImage"
  @instanceProperty    "currentBackgroundImage"
  @instanceProperty    "imageView"

  # Getting Dimensions
  backgroundRectForBounds: @nativeSelector "backgroundRectForBounds:"
  contentRectForBounds:    @nativeSelector "contentRectForBounds:"
  titleRectForContentRect: @nativeSelector "titleRectForContentRect:"
  imageRectForContentRect: @nativeSelector "imageRectForContentRect:"

  @instanceProperty "clicked",
        set: (v) ->
                if v
                        @proxy = new UIControlProxy v
                        @addTarget @proxy, @proxy.proxyAction, UIControlEvent.TouchUpInside
                else
                        @proxy = null

                undefined
        get: null # this should really be an actual getter that returns the callback...

  @register()
