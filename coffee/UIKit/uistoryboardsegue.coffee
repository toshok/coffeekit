# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIStoryboardSegue"
exports.UIStoryboardSegue = class UIStoryboardSegue extends foundation.NSObject
  # Initializing a Storyboard Segue
  initWithIdentifier: @nativeSelector "initWithIdentifier:source:destination:"

  # Accessing the Segue Attributes
  @instanceProperty "sourceViewController"
  @instanceProperty "destinationViewController"
  @instanceProperty "identifier"

  # Performing the Segue
  perform: @nativeSelector "perform"

  @register()
