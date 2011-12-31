# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UILocalizedIndexCollation"
exports.UILocalizedIndexCollation = class UILocalizedIndexCollation extends foundation.NSObject
  @register()

  # Getting the Shared Instance
  @currentCollation: objc.invokeSelector "currentCollation"

  # Preparing the for Sections and Section Indexes
  sectionForObject: objc.invokeSelector "sectionForObject:collationStringSelector:"
  sortedArrayFromArray: objc.invokeSelector "sortedArrayFromArray:collationStringSelector:"

  # Providing Section Index Data to the Table View
  ck.instanceProperty @, "sectionTitles"
  ck.instanceProperty @, "sectionIndexTitles"
  sectionForSectionIndexTitleAtIndex: objc.invokeSelector "sectionForSectionIndexTitleAtIndex:"
