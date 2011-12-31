# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UINib"
exports.UINib = class UINib extends foundation.NSObject
  @register()

  # Creating a Nib Object
  @nibWithNibName: objc.invokeSelector "nibWithNibName:bundle:"
  @nibWithData: objc.invokeSelector "nibWithData:bundle:"

  # Instantiating a Nib
  instantiateWithOwner: objc.invokeSelector "instantiateWithOwner:options:"
