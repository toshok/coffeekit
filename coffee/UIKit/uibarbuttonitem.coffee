# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIBarButtonItem"
exports.UIBarButtonItem = class UIBarButtonItem extends UIBarItem
  # Initializing an Item
  initWithCustomView:          @nativeSelector "initWithCustomView:"
  initWithBarButtonSystemItem: @nativeSelector "initWithBarButtonSystemItem:target:action:"
  initWithImage:               @nativeSelector "initWithImage:style:target:action:"
  initWithTitle:               @nativeSelector "initWithTitle:style:target:action:"
  initWithImageAndLandscape:   @nativeSelector "initWithImage:landscapeImagePhone:style:target:action:"

  initWithClickHandler: (title,style,click) ->
    @proxy = new UIControlProxy1 click
    @initWithTitle title, style, @proxy, @proxy.proxyAction


  # Getting and Setting Properties
  @instanceProperty "target"
  @instanceProperty "action"
  @instanceProperty "style"
  @instanceProperty "possibleTitles"
  @instanceProperty "width"
  @instanceProperty "customView"

  @instanceProperty("tintColor").makeUIAppearance()

  getBackButtonBackgroundImage:                      @nativeSelector("backButtonBackgroundImageForState:barMetrics:").makeUIAppearance()
  setBackButtonBackgroundImage:                      @nativeSelector("setBackButtonBackgroundImage:forState:barMetrics:").makeUIAppearance()

  getBackButtonTitlePositionAdjustment:              @nativeSelector("backButtonTitlePositionAdjustmentForBarMetrics:").makeUIAppearance()
  setBackButtonTitlePositionAdjustment:              @nativeSelector("setBackButtonTitlePositionAdjustment:forBarMetrics:").makeUIAppearance()

  getBackButtonBackgroundVerticalPositionAdjustment: @nativeSelector("backButtonBackgroundVerticalPositionAdjustmentForBarMetrics:").makeUIAppearance()
  setBackButtonBackgroundVerticalPositionAdjustment: @nativeSelector("setBackButtonBackgroundVerticalPositionAdjustment:forBarMetrics:").makeUIAppearance()

  getBackgroundVerticalPositionAdjustment:           @nativeSelector("backgroundVerticalPositionAdjustmentForBarMetrics:").makeUIAppearance()
  setBackgroundVerticalPositionAdjustment:           @nativeSelector("setBackgroundVerticalPositionAdjustment:forBarMetrics:").makeUIAppearance()

  getBackgroundImage:                                @nativeSelector("backgroundImageForState:barMetrics:").makeUIAppearance()
  setBackgroundImage:                                @nativeSelector("setBackgroundImage:forState:barMetrics:").makeUIAppearance()

  getTitlePositionAdjustment:                        @nativeSelector("titlePositionAdjustmentForBarMetrics:").makeUIAppearance()
  setTitlePositionAdjustment:                        @nativeSelector("setTitlePositionAdjustment:forBarMetrics:").makeUIAppearance()

  @::__defineSetter__ "clicked", (v) ->
                                     @proxy = new UIControlProxy1 v
                                     @target = @proxy
                                     @action = @proxy.proxyAction

  @register()

