# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSTableViewDataSource = class NSTableViewDataSource extends foundation.Protocol

  # Getting Values
  numberOfRows: @optionalMethod "numberOfRowsInTableView:"
  objectValueFor: @optionalMethod "tableView:objectValueForTableColumn:row:"

  # Setting Values
  setObjectValue: @optionalMethod "tableView:setObjectValue:forTableColumn:row:"

  # Implementing Pasteboard Support
  pasteboardWriterForRow: @optionalMethod "tableView:pasteboardWriterForRow:"

  # Drag and Drop
  acceptDrop: @optionalMethod "tableView:acceptDrop:row:dropOperation:"
  namesOfPromisedFilesDroppedAtDestination: @optionalMethod "tableView:namesOfPromisedFilesDroppedAtDestination:forDraggedRowsWithIndexes:"
  validateDrop: @optionalMethod "tableView:validateDrop:proposedRow:proposedDropOperation:"
  writeRows: @optionalMethod "tableView:writeRowsWithIndexes:toPasteboard:"
  draggingSessionWillBegin: @optionalMethod "tableView:draggingSession:willBeginAtPoint:forRowIndexes:"
  updateDraggingItems: @optionalMethod "tableView:updateDraggingItemsForDrag:"
  draggingSessionEnded: @optionalMethod "tableView:draggingSession:endedAtPoint:operation:"

  # Sorting
  sortDescriptorsChanged: @optionalMethod "tableView:sortDescriptorsDidChange:"

ck.RegisterAttribute NSTableViewDataSource
