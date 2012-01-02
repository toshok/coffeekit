# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.TWRequest = class TWRequest extends foundation.NSObject
  # Initializing Requests
  initWithURL: @nativeSelector "initWithURL:parameters:requestMethod:"

  # Accessing Properties
  @instanceProperty "account"
  @instanceProperty "requestMethod"
  @instanceProperty "URL"
  @instanceProperty "parameters"
  addMultiPartData: @nativeSelector "addMultiPartData:withName:type:"

  # Sending Requests
  performRequestWithHandler: @nativeSelector "performRequestWithHandler:"
  signedURLRequest: @nativeSelector "signedURLRequest"

  @register()
