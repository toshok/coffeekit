# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.TWTweetComposeViewController = class TWTweetComposeViewController extends ui.UIViewController
  @register()

  # Checking Status
  @canSendTweet: objc.invokeSelector "canSendTweet"

  # Composing Tweets
  setInitialText: objc.invokeSelector "setInitialText:"
  addImage: objc.invokeSelector "addImage:"
  addURL: objc.invokeSelector "addURL:"
  removeAllImages: objc.invokeSelector "removeAllImages"
  removeAllURLs: objc.invokeSelector "removeAllURLs"

  # Handling Results
  ck.instanceProperty @, "completionHandler"
