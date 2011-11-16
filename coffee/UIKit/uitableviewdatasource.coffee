# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITableViewDataSource"
Protocol = foundation.Protocol

class UITableViewDataSource extends foundation.Protocol

  # Configuring a Table View
  cellForRow:                  Protocol.requiredMethod("tableView:cellForRowAtIndexPath:", {sig: "@@:@@"})
  numberOfSections:            Protocol.optionalMethod("numberOfSectionsInTableView:", {sig: "i@:@"})
  numberOfRowsInSection:       Protocol.requiredMethod("tableView:numberOfRowsInSection:", {sig: "i@:@i"})
  sectionIndexTitles:          Protocol.optionalMethod "sectionIndexTitlesForTableView:"
  sectionForSectionIndexTitle: Protocol.optionalMethod "tableView:sectionForSectionIndexTitle:atIndex:"
  titleForHeaderInSection:     Protocol.optionalMethod("tableView:titleForHeaderInSection:", {sig: "@@:@i"})
  titleForFooterInSection:     Protocol.optionalMethod "tableView:titleForFooterInSection:"
  
  # Inserting or Deleting Table Rows
  commitEditingStyle:          Protocol.optionalMethod "tableView:commitEditingStyle:forRowAtIndexPath:"
  canEditRow:                  Protocol.optionalMethod "tableView:canEditRowAtIndexPath:"
  
  # Reordering Table Rows
  canMoveRow:                  Protocol.optionalMethod "tableView:canMoveRowAtIndexPath:"
  moveRow:                     Protocol.optionalMethod "tableView:moveRowAtIndexPath:toIndexPath:"

new ck.RegisterAttribute UITableViewDataSource, "UITableViewDataSource"
exports.UITableViewDataSource = UITableViewDataSource
