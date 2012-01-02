# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITableView"
exports.UITableView = class UITableView extends UIScrollView
  # Initializing a UITableView Object
  initWithFrame: @nativeSelector "initWithFrame:style:"

  # Configuring a Table View
  dequeueReusableCellWithIdentifier: @nativeSelector "dequeueReusableCellWithIdentifier:"
  numberOfRowsInSection:             @nativeSelector "numberOfRowsInSection:"
  numberOfSections:                  @nativeSelector "numberOfSections"
  @instanceProperty "style"
  @instanceProperty "rowHeight"
  @instanceProperty "separatorStyle"
  @instanceProperty "separatorColor"
  @instanceProperty "backgroundView"
  @instanceProperty "tableHeaderView"
  @instanceProperty "tableFooterView"
  @instanceProperty "sectionHeaderHeight"
  @instanceProperty "sectionFooterHeight"
  @instanceProperty "sectionIndexMinimumDisplayRowCount"

  # Accessing Cells and Sections
  cellForRowAtIndexPath:    @nativeSelector "cellForRowAtIndexPath:"
  indexPathForCell:         @nativeSelector "indexPathForCell:"
  indexPathForRowAtPoint:   @nativeSelector "indexPathForRowAtPoint:"
  indexPathsForRowsInRect:  @nativeSelector "indexPathsForRowsInRect:"
  visibleCells:             @nativeSelector "visibleCells"
  indexPathsForVisibleRows: @nativeSelector "indexPathsForVisibleRows"

  # Scrolling the Table View
  scrollToRowAtIndexPath:                     @nativeSelector "scrollToRowAtIndexPath:atScrollPosition:animated:"
  scrollToNearestSelectedRowAtScrollPosition: @nativeSelector "scrollToNearestSelectedRowAtScrollPosition:animated:"

  # Managing Selections
  indexPathForSelectedRow:   @nativeSelector "indexPathForSelectedRow"
  indexPathsForSelectedRows: @nativeSelector "indexPathsForSelectedRows"
  selectRowAtIndexPath:      @nativeSelector "selectRowAtIndexPath:animated:scrollPosition:"
  deselectRowAtIndexPath:    @nativeSelector "deselectRowAtIndexPath:animated:"
  @instanceProperty "allowsSelection"
  @instanceProperty "allowsMultipleSelection"
  @instanceProperty "allowsSelectionDuringEditing"
  @instanceProperty "allowsMultipleSelectionDuringEditing"

  # Inserting, Deleting, and Moving Rows and Sections
  beginUpdates:           @nativeSelector "beginUpdates"
  endUpdates:             @nativeSelector "endUpdates"
  insertRowsAtIndexPaths: @nativeSelector "insertRowsAtIndexPaths:withRowAnimation:"
  deleteRowsAtIndexPaths: @nativeSelector "deleteRowsAtIndexPaths:withRowAnimation:"
  moveRowAtIndexPath:     @nativeSelector "moveRowAtIndexPath:toIndexPath:"
  insertSections:         @nativeSelector "insertSections:withRowAnimation:"
  deleteSections:         @nativeSelector "deleteSections:withRowAnimation:"
  moveSection:            @nativeSelector "moveSection:toSection:"

  # Managing the Editing of Table Cells
  @instanceProperty "editing", { set: (v) -> @setEditing v, false }
  setEditing: @nativeSelector "setEditing:animated:"

  # Reloading the Table View
  reloadData:               @nativeSelector "reloadData"
  reloadRowsAtIndexPaths:   @nativeSelector "reloadRowsAtIndexPaths:withRowAnimation:"
  reloadSections:           @nativeSelector "reloadSections:withRowAnimation:"
  reloadSectionIndexTitles: @nativeSelector "reloadSectionIndexTitles"

  # Accessing Drawing Areas of the Table View
  rectForSection:         @nativeSelector "rectForSection:"
  rectForRowAtIndexPath:  @nativeSelector "rectForRowAtIndexPath:"
  rectForFooterInSection: @nativeSelector "rectForFooterInSection:"
  rectForHeaderInSection: @nativeSelector "rectForHeaderInSection:"

  # Registering Nib Objects for Cell Reuse
  registerNibForCellReuseIdentifier: @nativeSelector "registerNib:forCellReuseIdentifier:"

  # Managing the Delegate and the Data Source
  @autoboxProperty "dataSource", UITableViewDataSource
  @autoboxProperty "delegate", UITableViewDelegate

  @register()
