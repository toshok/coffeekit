# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPasteboard"
exports.UIPasteboard = class UIPasteboard extends foundation.NSObject
  @register()

  # Getting and Removing Pasteboards
  @generalPasteboard: objc.invokeSelector "generalPasteboard"
  @pasteboardWithName: objc.invokeSelector "pasteboardWithName:create:"
  @pasteboardWithUniqueName: objc.invokeSelector "pasteboardWithUniqueName"
  @removePasteboardWithName: objc.invokeSelector "removePasteboardWithName:"

  # Getting and Setting Pasteboard Attributes
  ck.instanceProperty @, "name"
  ck.instanceProperty @, "persistent"
  ck.instanceProperty @, "changeCount"

  # Determining Types of Single Pasteboard Items
  pasteboardTypes: objc.invokeSelector "pasteboardTypes"
  containsPasteboardTypes: objc.invokeSelector "containsPasteboardTypes:"

  # Getting and Setting Single Pasteboard Items
  dataForPasteboardType: objc.invokeSelector "dataForPasteboardType:"
  valueForPasteboardType: objc.invokeSelector "valueForPasteboardType:"
  setData:forPasteboardType: objc.invokeSelector "setData:forPasteboardType:"
  setValue:forPasteboardType: objc.invokeSelector "setValue:forPasteboardType:"

  # Determining the Types of Multiple Pasteboard Items
  ck.instanceProperty @, "numberOfItems"
  pasteboardTypesForItemSet: objc.invokeSelector "pasteboardTypesForItemSet:"
  itemSetWithPasteboardTypes: objc.invokeSelector "itemSetWithPasteboardTypes:"
  containsPasteboardTypesInItemSet: objc.invokeSelector "containsPasteboardTypes:inItemSet:"

  # Getting and Setting Multiple Pasteboard Items
  ck.instanceProperty @, "items"
  dataForPasteboardTypeInItemSet: objc.invokeSelector "dataForPasteboardType:inItemSet:"
  valuesForPasteboardTypeInItemSet: objc.invokeSelector "valuesForPasteboardType:inItemSet:"
  addItems: objc.invokeSelector "addItems:"

  # Getting and Setting Pasteboard Items of Standard Data Types
  ck.instanceProperty @, "string"
  ck.instanceProperty @, "strings"
  ck.instanceProperty @, "image"
  ck.instanceProperty @, "images"
  ck.instanceProperty @, "URL"
  ck.instanceProperty @, "URLs"
  ck.instanceProperty @, "color"
  ck.instanceProperty @, "colors"
