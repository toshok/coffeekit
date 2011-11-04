#console.log "UINib"
class UINib extends foundation.NSObject

  # Creating a Nib Object
  @nibWithNibName: objc.invokeSelector "nibWithNibName:bundle:"
  @nibWithData: objc.invokeSelector "nibWithData:bundle:"

  # Instantiating a Nib
  instantiateWithOwner: objc.invokeSelector "instantiateWithOwner:options:"

new ck.RegisterAttribute UINib, "UINib"
exports.UINib = UINib
