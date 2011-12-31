# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.TWRequest = class TWRequest extends foundation.NSObject
  @register()

  # Initializing Requests
  initWithURL: objc.invokeSelector "initWithURL:parameters:requestMethod:"

  # Accessing Properties
  ck.instanceProperty @, "account"
  ck.instanceProperty @, "requestMethod"
  ck.instanceProperty @, "URL"
  ck.instanceProperty @, "parameters"
  addMultiPartData: objc.invokeSelector "addMultiPartData:withName:type:"

  # Sending Requests
  performRequestWithHandler: objc.invokeSelector "performRequestWithHandler:"
  signedURLRequest: objc.invokeSelector "signedURLRequest"
