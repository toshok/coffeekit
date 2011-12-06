# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITableView"
class UITableView extends UIScrollView

  # Initializing a UITableView Object
  initWithFrame: objc.invokeSelector "initWithFrame:style:"

  # Configuring a Table View
  dequeueReusableCellWithIdentifier: objc.invokeSelector "dequeueReusableCellWithIdentifier:"
  ck.addProperty @::, "style"
  numberOfRowsInSection: objc.invokeSelector "numberOfRowsInSection:"
  numberOfSections: objc.invokeSelector "numberOfSections"
  ck.addProperty @::, "rowHeight"
  ck.addProperty @::, "separatorStyle"
  ck.addProperty @::, "separatorColor"
  ck.addProperty @::, "backgroundView"
  ck.addProperty @::, "tableHeaderView"
  ck.addProperty @::, "tableFooterView"
  ck.addProperty @::, "sectionHeaderHeight"
  ck.addProperty @::, "sectionFooterHeight"
  ck.addProperty @::, "sectionIndexMinimumDisplayRowCount"

  # Accessing Cells and Sections
  cellForRowAtIndexPath: objc.invokeSelector "cellForRowAtIndexPath:"
  indexPathForCell: objc.invokeSelector "indexPathForCell:"
  indexPathForRowAtPoint: objc.invokeSelector "indexPathForRowAtPoint:"
  indexPathsForRowsInRect: objc.invokeSelector "indexPathsForRowsInRect:"
  visibleCells: objc.invokeSelector "visibleCells"
  indexPathsForVisibleRows: objc.invokeSelector "indexPathsForVisibleRows"

  # Scrolling the Table View
  scrollToRowAtIndexPath: objc.invokeSelector "scrollToRowAtIndexPath:atScrollPosition:animated:"
  scrollToNearestSelectedRowAtScrollPosition: objc.invokeSelector "scrollToNearestSelectedRowAtScrollPosition:animated:"

  # Managing Selections
  indexPathForSelectedRow: objc.invokeSelector "indexPathForSelectedRow"
  indexPathsForSelectedRows: objc.invokeSelector "indexPathsForSelectedRows"
  selectRowAtIndexPath: objc.invokeSelector "selectRowAtIndexPath:animated:scrollPosition:"
  deselectRowAtIndexPath: objc.invokeSelector "deselectRowAtIndexPath:animated:"
  ck.addProperty @::, "allowsSelection"
  ck.addProperty @::, "allowsMultipleSelection"
  ck.addProperty @::, "allowsSelectionDuringEditing"
  ck.addProperty @::, "allowsMultipleSelectionDuringEditing"

  # Inserting, Deleting, and Moving Rows and Sections
  beginUpdates: objc.invokeSelector "beginUpdates"
  endUpdates: objc.invokeSelector "endUpdates"
  insertRowsAtIndexPaths: objc.invokeSelector "insertRowsAtIndexPaths:withRowAnimation:"
  deleteRowsAtIndexPaths: objc.invokeSelector "deleteRowsAtIndexPaths:withRowAnimation:"
  moveRowAtIndexPath: objc.invokeSelector "moveRowAtIndexPath:toIndexPath:"
  insertSections: objc.invokeSelector "insertSections:withRowAnimation:"
  deleteSections: objc.invokeSelector "deleteSections:withRowAnimation:"
  moveSection: objc.invokeSelector "moveSection:toSection:"

  # Managing the Editing of Table Cells
  ck.addProperty @::, "editing", { set: (v) -> @setEditing v, false }
  setEditing: objc.invokeSelector "setEditing:animated:"

  # Reloading the Table View
  reloadData: objc.invokeSelector "reloadData"
  reloadRowsAtIndexPaths: objc.invokeSelector "reloadRowsAtIndexPaths:withRowAnimation:"
  reloadSections: objc.invokeSelector "reloadSections:withRowAnimation:"
  reloadSectionIndexTitles: objc.invokeSelector "reloadSectionIndexTitles"

  # Accessing Drawing Areas of the Table View
  rectForSection: objc.invokeSelector "rectForSection:"
  rectForRowAtIndexPath: objc.invokeSelector "rectForRowAtIndexPath:"
  rectForFooterInSection: objc.invokeSelector "rectForFooterInSection:"
  rectForHeaderInSection: objc.invokeSelector "rectForHeaderInSection:"

  # Registering Nib Objects for Cell Reuse
  registerNibForCellReuseIdentifier: objc.invokeSelector "registerNib:forCellReuseIdentifier:"

  # Managing the Delegate and the Data Source
  ck.addProperty @::, "dataSource", { set: (v) -> objc.invokeSelector("setDataSource:").call this, (ck.autobox v, UITableViewDataSource) }
  ck.addProperty @::, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UITableViewDelegate) }

new ck.RegisterAttribute UITableView, "UITableView"
exports.UITableView = UITableView
