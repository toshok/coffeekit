# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITableView"
exports.UITableView = class UITableView extends UIScrollView
  @register()

  # Initializing a UITableView Object
  initWithFrame: objc.invokeSelector "initWithFrame:style:"

  # Configuring a Table View
  dequeueReusableCellWithIdentifier: objc.invokeSelector "dequeueReusableCellWithIdentifier:"
  ck.instanceProperty @, "style"
  numberOfRowsInSection: objc.invokeSelector "numberOfRowsInSection:"
  numberOfSections: objc.invokeSelector "numberOfSections"
  ck.instanceProperty @, "rowHeight"
  ck.instanceProperty @, "separatorStyle"
  ck.instanceProperty @, "separatorColor"
  ck.instanceProperty @, "backgroundView"
  ck.instanceProperty @, "tableHeaderView"
  ck.instanceProperty @, "tableFooterView"
  ck.instanceProperty @, "sectionHeaderHeight"
  ck.instanceProperty @, "sectionFooterHeight"
  ck.instanceProperty @, "sectionIndexMinimumDisplayRowCount"

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
  ck.instanceProperty @, "allowsSelection"
  ck.instanceProperty @, "allowsMultipleSelection"
  ck.instanceProperty @, "allowsSelectionDuringEditing"
  ck.instanceProperty @, "allowsMultipleSelectionDuringEditing"

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
  ck.instanceProperty @, "editing", { set: (v) -> @setEditing v, false }
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
  ck.instanceProperty @, "dataSource", { set: (v) -> objc.invokeSelector("setDataSource:").call this, (ck.autobox v, UITableViewDataSource) }
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UITableViewDelegate) }
