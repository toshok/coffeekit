# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPrintInfo"
exports.UIPrintInfo = class UIPrintInfo extends foundation.NSObject
  # Creating a UIPrintInfo Object
  @printInfo:               @nativeSelector "printInfo"
  @printInfoWithDictionary: @nativeSelector "printInfoWithDictionary:"
  dictionaryRepresentation: @nativeSelector "dictionaryRepresentation"

  # Getting and Setting Print-Job Attributes
  @instanceProperty "duplex"
  @instanceProperty "jobName"
  @instanceProperty "orientation"
  @instanceProperty "outputType"
  @instanceProperty "printerID"

  @register()
