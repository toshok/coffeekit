# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIWebView"
class UIWebView extends UIView

  # Setting the Delegate
  ck.addProperty @::, "delegate", set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIWebViewDelegate)

  # Loading Content
  loadData: objc.invokeSelector "loadData:MIMEType:textEncodingName:baseURL:"
  loadHTMLString: objc.invokeSelector "loadHTMLString:baseURL:"
  loadRequest: objc.invokeSelector "loadRequest:"
  ck.addProperty @::, "request"
  ck.addProperty @::, "loading"
  stopLoading: objc.invokeSelector "stopLoading"
  reload: objc.invokeSelector "reload"

  # Moving Back and Forward
  ck.addProperty @::, "canGoBack"
  ck.addProperty @::, "canGoForward"
  goBack: objc.invokeSelector "goBack"
  goForward: objc.invokeSelector "goForward"

  # Setting Web Content Properties
  ck.addProperty @::, "scalesPageToFit"
  ck.addProperty @::, "scrollView"
  ck.addProperty @::, "detectsPhoneNumbers" # Deprecated in iOS 3.0

  # Running JavaScript
  stringByEvaluatingJavaScriptFromString: objc.invokeSelector "stringByEvaluatingJavaScriptFromString:"

  # Detecting Types of Data
  ck.addProperty @::, "dataDetectorTypes"

  # Managing Media Playback
  ck.addProperty @::, "allowsInlineMediaPlayback"
  ck.addProperty @::, "mediaPlaybackRequiresUserAction"
  ck.addProperty @::, "mediaPlaybackAllowsAirPlay"

new ck.RegisterAttribute UIWebView, "UIWebView"
exports.UIWebView = UIWebView
