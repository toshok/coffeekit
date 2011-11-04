#console.log "UIWebViewDelegate"
Protocol = foundation.Protocol

class UIWebViewDelegate extends foundation.Protocol

  # Loading Content
  shouldStartLoad: Protocol.optionalMethod "webView:shouldStartLoadWithRequest:navigationType:"
  didStartLoad:    Protocol.optionalMethod "webViewDidStartLoad:"
  didFinishLoad:   Protocol.optionalMethod "webViewDidFinishLoad:"
  didFailLoad:     Protocol.optionalMethod "webView:didFailLoadWithError:"

new ck.RegisterAttribute UIWebViewDelegate, "UIWebViewDelegate"
exports.UIWebView = UIWebViewDelegate
