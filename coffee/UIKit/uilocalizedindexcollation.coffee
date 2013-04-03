# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UILocalizedIndexCollation"
exports.UILocalizedIndexCollation = class UILocalizedIndexCollation extends foundation.NSObject
  # Getting the Shared Instance
  @currentCollation:    @nativeSelector "currentCollation"

  # Preparing the for Sections and Section Indexes
  sectionForObject:     @nativeSelector "sectionForObject:collationStringSelector:"
  sortedArrayFromArray: @nativeSelector "sortedArrayFromArray:collationStringSelector:"

  # Providing Section Index Data to the Table View
  @instanceProperty "sectionTitles"
  @instanceProperty "sectionIndexTitles"
  sectionForSectionIndexTitleAtIndex: @nativeSelector "sectionForSectionIndexTitleAtIndex:"

  @register()
