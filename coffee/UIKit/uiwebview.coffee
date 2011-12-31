# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIWebView"
exports.UIWebView = class UIWebView extends UIView
  @register()

  # Setting the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIWebViewDelegate) }

  # Loading Content
  loadData: objc.invokeSelector "loadData:MIMEType:textEncodingName:baseURL:"
  loadHTMLString: objc.invokeSelector "loadHTMLString:baseURL:"
  loadRequest: objc.invokeSelector "loadRequest:"
  ck.instanceProperty @, "request"
  ck.instanceProperty @, "loading"
  stopLoading: objc.invokeSelector "stopLoading"
  reload: objc.invokeSelector "reload"

  # Moving Back and Forward
  ck.instanceProperty @, "canGoBack"
  ck.instanceProperty @, "canGoForward"
  goBack: objc.invokeSelector "goBack"
  goForward: objc.invokeSelector "goForward"

  # Setting Web Content Properties
  ck.instanceProperty @, "scalesPageToFit"
  ck.instanceProperty @, "scrollView"
  ck.instanceProperty @, "detectsPhoneNumbers" # Deprecated in iOS 3.0

  # Running JavaScript
  stringByEvaluatingJavaScriptFromString: objc.invokeSelector "stringByEvaluatingJavaScriptFromString:"

  # Detecting Types of Data
  ck.instanceProperty @, "dataDetectorTypes"

  # Managing Media Playback
  ck.instanceProperty @, "allowsInlineMediaPlayback"
  ck.instanceProperty @, "mediaPlaybackRequiresUserAction"
  ck.instanceProperty @, "mediaPlaybackAllowsAirPlay"

