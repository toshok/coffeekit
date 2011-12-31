# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIButton"
exports.UIButton = class UIButton extends UIControl
  @register()

  # Creating Buttons
  @buttonWithType: objc.invokeSelector "buttonWithType:"

  # Configuring Button Title
  ck.instanceProperty @, "titleLabel"
  ck.instanceProperty @, "reversesTitleShadowWhenHighlighted"
  setTitle: objc.invokeSelector "setTitle:forState:"
  getTitle: objc.invokeSelector "titleForState:"
  setTitleColor: objc.invokeSelector("setTitleColor:forState:").makeUIAppearance()
  getTitleColor: objc.invokeSelector("titleColorForState:").makeUIAppearance()
  setTitleShadowColor: objc.invokeSelector "setTitleShadowColor:forState:"
  getTitleShadowColor: objc.invokeSelector "titleShadowColorForState:"

  ck.instanceProperty @, "font" # Deprecated in iOS 3.0
  ck.instanceProperty @, "lineBreakMode" # Deprecated in iOS 3.0
  ck.instanceProperty @, "titleShadowOffset" # Deprecated in iOS 3.0

  # Configuring Button Presentation
  ck.instanceProperty @, "adjustsImageWhenHighlighted"
  ck.instanceProperty @, "adjustsImageWhenDisabled"
  ck.instanceProperty @, "showsTouchWhenHighlighted"
  setBackgroundImage: objc.invokeSelector "setBackgroundImage:forState:"
  getBbackgroundImage: objc.invokeSelector "backgroundImageForState:"
  setImage: objc.invokeSelector "setImage:forState:"
  getImage: objc.invokeSelector "imageForState:"
  ck.instanceProperty(@, "tintColor").makeUIAppearance()

  # Configuring Edge Insets
  ck.instanceProperty @, "contentEdgeInsets"
  ck.instanceProperty @, "titleEdgeInsets"
  ck.instanceProperty @, "imageEdgeInsets"

  # Getting the Current State
  ck.instanceProperty @, "buttonType"
  ck.instanceProperty @, "currentTitle"
  ck.instanceProperty @, "currentTitleColor"
  ck.instanceProperty @, "currentTitleShadowColor"
  ck.instanceProperty @, "currentImage"
  ck.instanceProperty @, "currentBackgroundImage"
  ck.instanceProperty @, "imageView"

  # Getting Dimensions
  backgroundRectForBounds: objc.invokeSelector "backgroundRectForBounds:"
  contentRectForBounds: objc.invokeSelector "contentRectForBounds:"
  titleRectForContentRect: objc.invokeSelector "titleRectForContentRect:"
  imageRectForContentRect: objc.invokeSelector "imageRectForContentRect:"

  @::__defineSetter__ "clicked", (v) ->
                                     @proxy = new UIControlProxy v
                                     @addTarget @proxy, @proxy.proxyAction, UIControlEvent.TouchUpInside
