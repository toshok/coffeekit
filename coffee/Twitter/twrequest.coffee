# This file is part of coffeekit.  for licensing information, see the LICENSE file

class TWRequest extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Initializing Requests
  initWithURL: objc.invokeSelector ("initWithURL:parameters:requestMethod:")

  # Accessing Properties
  ck.addProperty @::, "account"
  ck.addProperty @::, "requestMethod"
  ck.addProperty @::, "URL"
  ck.addProperty @::, "parameters"
  addMultiPartData: objc.invokeSelector ("addMultiPartData:withName:type:")

  # Sending Requests
  performRequestWithHandler: objc.invokeSelector ("performRequestWithHandler:")
  signedURLRequest: objc.invokeSelector ("signedURLRequest")

new ck.RegisterAttribute TWRequest, "TWRequest"
exports.TWRequest = TWRequest
