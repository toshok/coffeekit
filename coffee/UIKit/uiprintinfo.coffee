# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPrintInfo"
exports.UIPrintInfo = class UIPrintInfo extends foundation.NSObject
  @register()

  # Creating a UIPrintInfo Object
  @printInfo: objc.invokeSelector "printInfo"
  @printInfoWithDictionary: objc.invokeSelector "printInfoWithDictionary:"
  dictionaryRepresentation: objc.invokeSelector "dictionaryRepresentation"

  # Getting and Setting Print-Job Attributes
  ck.instanceProperty @, "duplex"
  ck.instanceProperty @, "jobName"
  ck.instanceProperty @, "orientation"
  ck.instanceProperty @, "outputType"
  ck.instanceProperty @, "printerID"
