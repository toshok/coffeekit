# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITableViewDataSource"

exports.UITableViewDataSource = class UITableViewDataSource extends foundation.Protocol
  # Configuring a Table View
  cellForRow:                  @requiredMethod("tableView:cellForRowAtIndexPath:", sig: "@@:@@")
  numberOfSections:            @optionalMethod("numberOfSectionsInTableView:", sig: "i@:@")
  numberOfRowsInSection:       @requiredMethod("tableView:numberOfRowsInSection:", sig: "i@:@i")
  sectionIndexTitles:          @optionalMethod "sectionIndexTitlesForTableView:"
  sectionForSectionIndexTitle: @optionalMethod "tableView:sectionForSectionIndexTitle:atIndex:"
  titleForHeaderInSection:     @optionalMethod("tableView:titleForHeaderInSection:", sig: "@@:@i")
  titleForFooterInSection:     @optionalMethod "tableView:titleForFooterInSection:"
  
  # Inserting or Deleting Table Rows
  commitEditingStyle:          @optionalMethod "tableView:commitEditingStyle:forRowAtIndexPath:"
  canEditRow:                  @optionalMethod "tableView:canEditRowAtIndexPath:"
  
  # Reordering Table Rows
  canMoveRow:                  @optionalMethod "tableView:canMoveRowAtIndexPath:"
  moveRow:                     @optionalMethod "tableView:moveRowAtIndexPath:toIndexPath:"

  @register()
