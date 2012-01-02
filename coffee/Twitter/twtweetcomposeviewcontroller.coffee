# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.TWTweetComposeViewController = class TWTweetComposeViewController extends ui.UIViewController
  # Checking Status
  @canSendTweet: @nativeSelector "canSendTweet"

  # Composing Tweets
  setInitialText: @nativeSelector "setInitialText:"
  addImage: @nativeSelector "addImage:"
  addURL: @nativeSelector "addURL:"
  removeAllImages: @nativeSelector "removeAllImages"
  removeAllURLs: @nativeSelector "removeAllURLs"

  # Handling Results
  @instanceProperty "completionHandler"

  @register()
