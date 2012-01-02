# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPasteboard"
exports.UIPasteboard = class UIPasteboard extends foundation.NSObject
  # Getting and Removing Pasteboards
  @generalPasteboard:        @nativeSelector "generalPasteboard"
  @pasteboardWithName:       @nativeSelector "pasteboardWithName:create:"
  @pasteboardWithUniqueName: @nativeSelector "pasteboardWithUniqueName"
  @removePasteboardWithName: @nativeSelector "removePasteboardWithName:"

  # Getting and Setting Pasteboard Attributes
  @instanceProperty "name"
  @instanceProperty "persistent"
  @instanceProperty "changeCount"

  # Determining Types of Single Pasteboard Items
  pasteboardTypes:         @nativeSelector "pasteboardTypes"
  containsPasteboardTypes: @nativeSelector "containsPasteboardTypes:"

  # Getting and Setting Single Pasteboard Items
  dataForPasteboardType:      @nativeSelector "dataForPasteboardType:"
  valueForPasteboardType:     @nativeSelector "valueForPasteboardType:"
  setData:forPasteboardType:  @nativeSelector "setData:forPasteboardType:"
  setValue:forPasteboardType: @nativeSelector "setValue:forPasteboardType:"

  # Determining the Types of Multiple Pasteboard Items
  pasteboardTypesForItemSet:        @nativeSelector "pasteboardTypesForItemSet:"
  itemSetWithPasteboardTypes:       @nativeSelector "itemSetWithPasteboardTypes:"
  containsPasteboardTypesInItemSet: @nativeSelector "containsPasteboardTypes:inItemSet:"
  @instanceProperty "numberOfItems"

  # Getting and Setting Multiple Pasteboard Items
  dataForPasteboardTypeInItemSet:   @nativeSelector "dataForPasteboardType:inItemSet:"
  valuesForPasteboardTypeInItemSet: @nativeSelector "valuesForPasteboardType:inItemSet:"
  addItems:                         @nativeSelector "addItems:"
  @instanceProperty "items"

  # Getting and Setting Pasteboard Items of Standard Data Types
  @instanceProperty "string"
  @instanceProperty "strings"
  @instanceProperty "image"
  @instanceProperty "images"
  @instanceProperty "URL"
  @instanceProperty "URLs"
  @instanceProperty "color"
  @instanceProperty "colors"

  @register()
