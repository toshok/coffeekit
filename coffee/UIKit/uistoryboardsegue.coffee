# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIStoryboardSegue"
exports.UIStoryboardSegue = class UIStoryboardSegue extends foundation.NSObject
  @register()

  # Initializing a Storyboard Segue
  initWithIdentifier: objc.invokeSelector "initWithIdentifier:source:destination:"

  # Accessing the Segue Attributes
  ck.instanceProperty @, "sourceViewController"
  ck.instanceProperty @, "destinationViewController"
  ck.instanceProperty @, "identifier"

  # Performing the Segue
  perform: objc.invokeSelector "perform"
