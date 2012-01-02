# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UINib"
exports.UINib = class UINib extends foundation.NSObject
  # Creating a Nib Object
  @nibWithNibName: @nativeSelector "nibWithNibName:bundle:"
  @nibWithData:    @nativeSelector "nibWithData:bundle:"

  # Instantiating a Nib
  instantiateWithOwner: @nativeSelector "instantiateWithOwner:options:"

  @register()
