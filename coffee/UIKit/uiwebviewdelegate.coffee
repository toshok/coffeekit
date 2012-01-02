# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIWebViewDelegate"

exports.UIWebViewDelegate = class UIWebViewDelegate extends foundation.Protocol
  # Loading Content
  shouldStartLoad: @optionalMethod "webView:shouldStartLoadWithRequest:navigationType:"
  didStartLoad:    @optionalMethod "webViewDidStartLoad:"
  didFinishLoad:   @optionalMethod "webViewDidFinishLoad:"
  didFailLoad:     @optionalMethod "webView:didFailLoadWithError:"

  @register()
