# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITableViewDelegate"
Protocol = foundation.Protocol

exports.UITableViewDelegate = class UITableViewDelegate extends foundation.Protocol
  @register()

  # Configuring Rows for the Table View
  heightForRowAtIndexPath:  Protocol.optionalMethod "tableView:heightForRowAtIndexPath:"
  indentationLevelForRow:   Protocol.optionalMethod "tableView:indentationLevelForRowAtIndexPath:"
  willDisplayCellForRow:    Protocol.optionalMethod "tableView:willDisplayCell:forRowAtIndexPath:"
  
  # Managing Accessory Views
  accessoryButtonTappedForRow:    Protocol.optionalMethod "tableView:accessoryButtonTappedForRowWithIndexPath:"
  accessoryTypeForRow:            Protocol.optionalMethod "tableView:accessoryTypeForRowWithIndexPath:" # Deprecated in iOS 3.0
  
  # Managing Selections
  willSelectRow:    Protocol.optionalMethod("tableView:willSelectRowAtIndexPath:", { sig: "@@:@@" })
  didSelectRow:     Protocol.optionalMethod("tableView:didSelectRowAtIndexPath:", { sig: "v@:@@" })
  willDeselectRow:  Protocol.optionalMethod("tableView:willDeselectRowAtIndexPath:", { sig: "@@:@@" })
  didDeselectRow:   Protocol.optionalMethod("tableView:didDeselectRowAtIndexPath:", { sig: "v@:@@" })

  # Modifying the Header and Footer of Sections
  viewForHeader:    Protocol.optionalMethod "tableView:viewForHeaderInSection:"
  viewForFooter:    Protocol.optionalMethod "tableView:viewForFooterInSection:"
  heightForHeader:  Protocol.optionalMethod "tableView:heightForHeaderInSection:"
  heightForFooter:  Protocol.optionalMethod "tableView:heightForFooterInSection:"

  # Editing Table Rows
  willBeginEditingRow:                    Protocol.optionalMethod "tableView:willBeginEditingRowAtIndexPath:"
  didEndEditingRow:                       Protocol.optionalMethod "tableView:didEndEditingRowAtIndexPath:"
  editingStyleForRow:                     Protocol.optionalMethod "tableView:editingStyleForRowAtIndexPath:"
  titleForDeleteConfirmationButtonForRow: Protocol.optionalMethod "tableView:titleForDeleteConfirmationButtonForRowAtIndexPath:"
  shouldIndentWhileEditingRow:            Protocol.optionalMethod "tableView:shouldIndentWhileEditingRowAtIndexPath:"

  # Reordering Table Rows
  targetIndexPathForMoveFromRow:     Protocol.optionalMethod "tableView:targetIndexPathForMoveFromRowAtIndexPath:toProposedIndexPath:"

  # Copying and Pasting Row Content
  shouldShowMenuForRow:              Protocol.optionalMethod "tableView:shouldShowMenuForRowAtIndexPath:"
  canPerformActionForRow:            Protocol.optionalMethod "tableView:canPerformAction:forRowAtIndexPath:withSender:"
  performActionForRow:               Protocol.optionalMethod "tableView:performAction:forRowAtIndexPath:withSender:"
