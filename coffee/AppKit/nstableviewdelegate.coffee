# This file is part of coffeekit.  for licensing information, see the LICENSE file

ck.register exports.NSTableViewDelegate = class NSTableViewDelegate extends foundation.Protocol

  # Providing Views for Rows and Columns
  viewFor: @optionalMethod "tableView:viewForTableColumn:row:"
  viewForRow: @optionalMethod "tableView:rowViewForRow:"

  # Notification of Row Views Being Added or Removed.
  addedRowView: @optionalMethod "tableView:didAddRowView:forRow:"
  removedRowView: @optionalMethod "tableView:didRemoveRowView:forRow:"

  # Grouping Rows
  isGroupRow: @optionalMethod "tableView:isGroupRow:"

  # Providing Cells for Rows and Columns
  willDisplayCell: @optionalMethod "tableView:willDisplayCell:forTableColumn:row:"
  dataCellFor: @optionalMethod "tableView:dataCellForTableColumn:row:"
  shouldShowCellExpansionFor: @optionalMethod "tableView:shouldShowCellExpansionForTableColumn:row:"
  toolTipForCell: @optionalMethod "tableView:toolTipForCell:rect:tableColumn:row:mouseLocation:"

  # Editing Cells
  shouldEdit: @optionalMethod "tableView:shouldEditTableColumn:row:"

  # Setting Row and Column Size
  rowHeight: @optionalMethod "tableView:heightOfRow:"
  sizeToFitWidth: @optionalMethod "tableView:sizeToFitWidthOfColumn:"

  # Selecting Rows
  selectionShouldChange: @optionalMethod "selectionShouldChangeInTableView:"
  shouldSelectRow: @optionalMethod "tableView:shouldSelectRow:"
  selectionIndexesForProposedSelection: @optionalMethod "tableView:selectionIndexesForProposedSelection:"
  shouldSelectTableColumn: @optionalMethod "tableView:shouldSelectTableColumn:"
  selectionIsChanging: @optionalMethod "tableViewSelectionIsChanging:"
  selectionChanged: @optionalMethod "tableViewSelectionDidChange:"
  shouldTypeSelect: @optionalMethod "tableView:shouldTypeSelectForEvent:withCurrentSearchString:"
  typeSelectString: @optionalMethod "tableView:typeSelectStringForTableColumn:row:"
  nextTypeSelectMatch: @optionalMethod "tableView:nextTypeSelectMatchFromRow:toRow:forString:"

  # Moving and Resizing Columns
  shouldReorder: @optionalMethod "tableView:shouldReorderColumn:toColumn:"
  draggedTableColumn: @optionalMethod "tableView:didDragTableColumn:"
  columnMoved: @optionalMethod "tableViewColumnDidMove:"
  columnResized: @optionalMethod "tableViewColumnDidResize:"

  # Responding to Mouse Events
  clickedTableColumn: @optionalMethod "tableView:didClickTableColumn:"
  mouseDownInHeader: @optionalMethod "tableView:mouseDownInHeaderOfTableColumn:"
  shouldTrackCell: @optionalMethod "tableView:shouldTrackCell:forTableColumn:row:"

ck.RegisterAttribute NSTableViewDelegate
