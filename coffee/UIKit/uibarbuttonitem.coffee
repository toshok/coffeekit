# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIBarButtonItem"
class UIBarButtonItem extends UIBarItem

  constructor: (handle) ->
    super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Initializing an Item
  initWithCustomView: objc.invokeSelector "initWithCustomView:"
  initWithBarButtonSystemItem: objc.invokeSelector "initWithBarButtonSystemItem:target:action:"
  initWithImage: objc.invokeSelector "initWithImage:style:target:action:"
  initWithTitle: objc.invokeSelector "initWithTitle:style:target:action:"
  initWithImageAndLandscape: objc.invokeSelector "initWithImage:landscapeImagePhone:style:target:action:"
  initWithClickHandler: (title,style,click) ->
    @proxy = new UIControlProxy1 click
    @initWithTitle title, style, @proxy, @proxy.proxyAction


  # Getting and Setting Properties
  ck.addProperty @::, "target"
  ck.addProperty @::, "action"
  ck.addProperty @::, "style"
  ck.addProperty @::, "possibleTitles"
  ck.addProperty @::, "width"
  ck.addProperty @::, "customView"

  ck.addProperty(@::, "tintColor").makeUIAppearance()

  getBackButtonBackgroundImage: objc.invokeSelector("backButtonBackgroundImageForState:barMetrics:").makeUIAppearance()
  setBackButtonBackgroundImage: objc.invokeSelector("setBackButtonBackgroundImage:forState:barMetrics:").makeUIAppearance()

  getBackButtonTitlePositionAdjustment: objc.invokeSelector("backButtonTitlePositionAdjustmentForBarMetrics:").makeUIAppearance()
  setBackButtonTitlePositionAdjustment: objc.invokeSelector("setBackButtonTitlePositionAdjustment:forBarMetrics:").makeUIAppearance()

  getBackButtonBackgroundVerticalPositionAdjustment: objc.invokeSelector("backButtonBackgroundVerticalPositionAdjustmentForBarMetrics:").makeUIAppearance()
  setBackButtonBackgroundVerticalPositionAdjustment: objc.invokeSelector("setBackButtonBackgroundVerticalPositionAdjustment:forBarMetrics:").makeUIAppearance()

  getBackgroundVerticalPositionAdjustment: objc.invokeSelector("backgroundVerticalPositionAdjustmentForBarMetrics:").makeUIAppearance()
  setBackgroundVerticalPositionAdjustment: objc.invokeSelector("setBackgroundVerticalPositionAdjustment:forBarMetrics:").makeUIAppearance()

  getBackgroundImage: objc.invokeSelector("backgroundImageForState:barMetrics:").makeUIAppearance()
  setBackgroundImage: objc.invokeSelector("setBackgroundImage:forState:barMetrics:").makeUIAppearance()

  getTitlePositionAdjustment: objc.invokeSelector("titlePositionAdjustmentForBarMetrics:").makeUIAppearance()
  setTitlePositionAdjustment: objc.invokeSelector("setTitlePositionAdjustment:forBarMetrics:").makeUIAppearance()

  @::__defineSetter__ "clicked", (v) ->
                                     @proxy = new UIControlProxy1 v
                                     @target = @proxy
                                     @action = @proxy.proxyAction


new ck.RegisterAttribute UIBarButtonItem, "UIBarButtonItem"
exports.UIBarButtonItem = UIBarButtonItem
