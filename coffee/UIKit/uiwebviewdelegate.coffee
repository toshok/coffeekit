# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIWebViewDelegate"
Protocol = foundation.Protocol

exports.UIWebViewDelegate = class UIWebViewDelegate extends foundation.Protocol
  @register()

  # Loading Content
  shouldStartLoad: Protocol.optionalMethod "webView:shouldStartLoadWithRequest:navigationType:"
  didStartLoad:    Protocol.optionalMethod "webViewDidStartLoad:"
  didFinishLoad:   Protocol.optionalMethod "webViewDidFinishLoad:"
  didFailLoad:     Protocol.optionalMethod "webView:didFailLoadWithError:"
