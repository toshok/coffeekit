#console.log "UILocalizedIndexCollation"
class UILocalizedIndexCollation extends foundation.NSObject

  # Getting the Shared Instance
  @currentCollation: objc.invokeSelector "currentCollation"

  # Preparing the for Sections and Section Indexes
  sectionForObject: objc.invokeSelector "sectionForObject:collationStringSelector:"
  sortedArrayFromArray: objc.invokeSelector "sortedArrayFromArray:collationStringSelector:"

  # Providing Section Index Data to the Table View
  ck.addProperty @::, "sectionTitles"
  ck.addProperty @::, "sectionIndexTitles"
  sectionForSectionIndexTitleAtIndex: objc.invokeSelector "sectionForSectionIndexTitleAtIndex:"

new ck.RegisterAttribute UILocalizedIndexCollation, "UILocalizedIndexCollation"
exports.UILocalizedIndexCollation = UILocalizedIndexCollation
