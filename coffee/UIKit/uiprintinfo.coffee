#console.log "UIPrintInfo"
class UIPrintInfo extends foundation.NSObject

  # Creating a UIPrintInfo Object
  @printInfo: objc.invokeSelector "printInfo"
  @printInfoWithDictionary: objc.invokeSelector "printInfoWithDictionary:"
  dictionaryRepresentation: objc.invokeSelector "dictionaryRepresentation"

  # Getting and Setting Print-Job Attributes
  ck.addProperty @::, "duplex"
  ck.addProperty @::, "jobName"
  ck.addProperty @::, "orientation"
  ck.addProperty @::, "outputType"
  ck.addProperty @::, "printerID"

new ck.RegisterAttribute UIPrintInfo, "UIPrintInfo"
exports.UIPrintInfo = UIPrintInfo
