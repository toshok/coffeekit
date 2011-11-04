#console.log "UIStoryboardSegue"
class UIStoryboardSegue extends foundation.NSObject

  # Initializing a Storyboard Segue
  initWithIdentifier: objc.invokeSelector ("initWithIdentifier:source:destination:")

  # Accessing the Segue Attributes
  ck.addProperty @::, "sourceViewController"
  ck.addProperty @::, "destinationViewController"
  ck.addProperty @::, "identifier"

  # Performing the Segue
  perform: objc.invokeSelector ("perform")

new ck.RegisterAttribute UIStoryboardSegue, "UIStoryboardSegue"
exports.UIStoryboardSegue = UIStoryboardSegue
