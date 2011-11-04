#console.log "UIButton"
class UIButton extends UIControl

  constructor: (handle) ->
    super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Creating Buttons
  @buttonWithType: objc.invokeSelector ("buttonWithType:")

  # Configuring Button Title
  ck.addProperty @::, "titleLabel"
  ck.addProperty @::, "reversesTitleShadowWhenHighlighted"
  setTitle: objc.invokeSelector ("setTitle:forState:")
  getTitle: objc.invokeSelector ("titleForState:")
  setTitleColor: objc.invokeSelector("setTitleColor:forState:").makeUIAppearance()
  getTitleColor: objc.invokeSelector("titleColorForState:").makeUIAppearance()
  setTitleShadowColor: objc.invokeSelector ("setTitleShadowColor:forState:")
  getTitleShadowColor: objc.invokeSelector ("titleShadowColorForState:")

  ck.addProperty @::, "font" # Deprecated in iOS 3.0
  ck.addProperty @::, "lineBreakMode" # Deprecated in iOS 3.0
  ck.addProperty @::, "titleShadowOffset" # Deprecated in iOS 3.0

  # Configuring Button Presentation
  ck.addProperty @::, "adjustsImageWhenHighlighted"
  ck.addProperty @::, "adjustsImageWhenDisabled"
  ck.addProperty @::, "showsTouchWhenHighlighted"
  setBackgroundImage: objc.invokeSelector ("setBackgroundImage:forState:")
  getBbackgroundImage: objc.invokeSelector ("backgroundImageForState:")
  setImage: objc.invokeSelector ("setImage:forState:")
  getImage: objc.invokeSelector ("imageForState:")
  ck.addProperty(@::, "tintColor").makeUIAppearance()

  # Configuring Edge Insets
  ck.addProperty @::, "contentEdgeInsets"
  ck.addProperty @::, "titleEdgeInsets"
  ck.addProperty @::, "imageEdgeInsets"

  # Getting the Current State
  ck.addProperty @::, "buttonType"
  ck.addProperty @::, "currentTitle"
  ck.addProperty @::, "currentTitleColor"
  ck.addProperty @::, "currentTitleShadowColor"
  ck.addProperty @::, "currentImage"
  ck.addProperty @::, "currentBackgroundImage"
  ck.addProperty @::, "imageView"

  # Getting Dimensions
  backgroundRectForBounds: objc.invokeSelector ("backgroundRectForBounds:")
  contentRectForBounds: objc.invokeSelector ("contentRectForBounds:")
  titleRectForContentRect: objc.invokeSelector ("titleRectForContentRect:")
  imageRectForContentRect: objc.invokeSelector ("imageRectForContentRect:")

  @::__defineSetter__ "clicked", (v) ->
                                     @proxy = new UIControlProxy v
                                     @addTarget @proxy, @proxy.proxyAction, UIControlEvent.TouchUpInside

new ck.RegisterAttribute UIButton, "UIButton"
exports.UIButton = UIButton
