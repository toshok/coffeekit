# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIWebView"
exports.UIWebView = class UIWebView extends UIView
  # Setting the Delegate
  @autoboxProperty "delegate", UIWebViewDelegate

  # Loading Content
  loadData:       @nativeSelector "loadData:MIMEType:textEncodingName:baseURL:"
  loadHTMLString: @nativeSelector "loadHTMLString:baseURL:"
  loadRequest:    @nativeSelector "loadRequest:"
  stopLoading:    @nativeSelector "stopLoading"
  reload:         @nativeSelector "reload"
  @instanceProperty "loading"
  @instanceProperty "request"

  # Moving Back and Forward
  goBack:    @nativeSelector "goBack"
  goForward: @nativeSelector "goForward"
  @instanceProperty "canGoBack"
  @instanceProperty "canGoForward"

  # Setting Web Content Properties
  @instanceProperty "scalesPageToFit"
  @instanceProperty "scrollView"
  @instanceProperty "detectsPhoneNumbers" # Deprecated in iOS 3.0

  # Running JavaScript
  stringByEvaluatingJavaScriptFromString: @nativeSelector "stringByEvaluatingJavaScriptFromString:"

  # Detecting Types of Data
  @instanceProperty "dataDetectorTypes"

  # Managing Media Playback
  @instanceProperty "allowsInlineMediaPlayback"
  @instanceProperty "mediaPlaybackRequiresUserAction"
  @instanceProperty "mediaPlaybackAllowsAirPlay"

  @register()

