#console.log "UIPasteboard"
class UIPasteboard extends foundation.NSObject

  # Getting and Removing Pasteboards
  @generalPasteboard: objc.invokeSelector "generalPasteboard"
  @pasteboardWithName: objc.invokeSelector "pasteboardWithName:create:"
  @pasteboardWithUniqueName: objc.invokeSelector "pasteboardWithUniqueName"
  @removePasteboardWithName: objc.invokeSelector "removePasteboardWithName:"

  # Getting and Setting Pasteboard Attributes
  ck.addProperty @::, "name"
  ck.addProperty @::, "persistent"
  ck.addProperty @::, "changeCount"

  # Determining Types of Single Pasteboard Items
  pasteboardTypes: objc.invokeSelector "pasteboardTypes"
  containsPasteboardTypes: objc.invokeSelector "containsPasteboardTypes:"

  # Getting and Setting Single Pasteboard Items
  dataForPasteboardType: objc.invokeSelector "dataForPasteboardType:"
  valueForPasteboardType: objc.invokeSelector "valueForPasteboardType:"
  setData:forPasteboardType: objc.invokeSelector "setData:forPasteboardType:"
  setValue:forPasteboardType: objc.invokeSelector "setValue:forPasteboardType:"

  # Determining the Types of Multiple Pasteboard Items
  ck.addProperty @::, "numberOfItems"
  pasteboardTypesForItemSet: objc.invokeSelector "pasteboardTypesForItemSet:"
  itemSetWithPasteboardTypes: objc.invokeSelector "itemSetWithPasteboardTypes:"
  containsPasteboardTypesInItemSet: objc.invokeSelector "containsPasteboardTypes:inItemSet:"

  # Getting and Setting Multiple Pasteboard Items
  ck.addProperty @::, "items"
  dataForPasteboardTypeInItemSet: objc.invokeSelector "dataForPasteboardType:inItemSet:"
  valuesForPasteboardTypeInItemSet: objc.invokeSelector "valuesForPasteboardType:inItemSet:"
  addItems: objc.invokeSelector "addItems:"

  # Getting and Setting Pasteboard Items of Standard Data Types
  ck.addProperty @::, "string"
  ck.addProperty @::, "strings"
  ck.addProperty @::, "image"
  ck.addProperty @::, "images"
  ck.addProperty @::, "URL"
  ck.addProperty @::, "URLs"
  ck.addProperty @::, "color"
  ck.addProperty @::, "colors"

new ck.RegisterAttribute UIPasteboard, "UIPasteboard"
exports.UIPasteboard = UIPasteboard
