# This file is part of coffeekit.  for licensing information, see the LICENSE file

class TWTweetComposeViewController extends ui.UIViewController
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Checking Status
  @canSendTweet: objc.invokeSelector ("canSendTweet")

  # Composing Tweets
  setInitialText: objc.invokeSelector ("setInitialText:")
  addImage: objc.invokeSelector ("addImage:")
  addURL: objc.invokeSelector ("addURL:")
  removeAllImages: objc.invokeSelector ("removeAllImages")
  removeAllURLs: objc.invokeSelector ("removeAllURLs")

  # Handling Results
  ck.addProperty @::, "completionHandler"

new ck.RegisterAttribute TWTweetComposeViewController, "TWTweetComposeViewController"
exports.TWTweetComposeViewController = TWTweetComposeViewController
