# This file is part of coffeekit.  for licensing information, see the LICENSE file

ck.register exports.NSTableView = class NSTableView extends NSControl

        @newWithFrame: (frame) -> @newWith initWith: "Frame", args: [frame]

        # Creating the Displayed Views
        makeViewWithIdentifier: @nativeSelector "makeViewWithIdentifier:owner:"
        rowViewAtRow: @nativeSelector "rowViewAtRow:makeIfNecessary:"
        viewAt: @nativeSelector "viewAtColumn:row:makeIfNecessary:"

        # Setting the Data Source
        @autoboxProperty "dataSource", NSTableViewDataSource

        # Loading Data
        reloadData: @nativeSelector "reloadData"
        reloadDataFor: @nativeSelector "reloadDataForRowIndexes:columnIndexes:"

        # Using Views for Row and Column Content
        beginUpdates: @nativeSelector "beginUpdates"
        endUpdates: @nativeSelector "endUpdates"
        columnForView: @nativeSelector "columnForView:"
        moveRowAt: @nativeSelector "moveRowAtIndex:toIndex:"
        insertRowsAt: @nativeSelector "insertRowsAtIndexes:withAnimation:"
        removeRowsAt: @nativeSelector "removeRowsAtIndexes:withAnimation:"
        rowForView: @nativeSelector "rowForView:"

        # View-based Table Nib Registration
        registerNib: @nativeSelector "registerNib:forIdentifier:"
        registeredNibsByIdentifier: @nativeSelector "registeredNibsByIdentifier"

        # Target-action Behavior
        @instanceProperty "doubleAction"
        @instanceProperty "clickedColumn", set: null
        @instanceProperty "clickedRow", set: null

        # Configuring Behavior
        @instanceProperty "allowsColumnReordering"
        @instanceProperty "allowsColumnResizing"
        @instanceProperty "allowsEmptySelection"
        @instanceProperty "allowsColumnSelection"

        # Setting Display Attributes
        @instanceProperty "intercellSpacing"
        @instanceProperty "rowHeight"
        @instanceProperty "backgroundColor"
        @instanceProperty "usesAlternatingRowBackgroundColors"
        @instanceProperty "selectionHighlightStyle"
        @instanceProperty "gridColor"
        @instanceProperty "gridStyleMask"

        indicatorImage: @nativeSelector "indicatorImageInTableColumn:"
        setIndicatorImage: @nativeSelector "setIndicatorImage:inTableColumn:"

        # Getting and Setting Row Size Styles
        effectiveRowSizeStyle: @nativeSelector "effectiveRowSizeStyle"
        @instanceProperty "rowSizeStyle"

        # Column Management
        addTableColumn: @nativeSelector "addTableColumn:"
        removeTableColumn: @nativeSelector "removeTableColumn:"
        moveColumn: @nativeSelector "moveColumn:toColumn:"
        @instanceProperty "tableColumns", set: null
        columnWithIdentifier: @nativeSelector "columnWithIdentifier:"
        tableColumnWithIdentifier: @nativeSelector "tableColumnWithIdentifier:"

        # Selecting Columns and Rows
        @instanceProperty "selectedColumn", set: null
        @instanceProperty "selectedColumnIndexes", set: null
        @instanceProperty "numberOfSelectedColumns", set: null
        @instanceProperty "selectedRow", set: null
        @instanceProperty "selectedRowIndexes", set: null
        @instanceProperty "numberOfSelectedRows", set: null
        selectColumnIndexes: @nativeSelector "selectColumnIndexes:byExtendingSelection:"
        deselectColumn: @nativeSelector "deselectColumn:"
        isColumnSelected: @nativeSelector "isColumnSelected:"
        selectRowIndexes: @nativeSelector "selectRowIndexes:byExtendingSelection:"
        deselectRow: @nativeSelector "deselectRow:"
        isRowSelected: @nativeSelector "isRowSelected:"
        selectAll: @nativeSelector "selectAll:"
        deselectAll: @nativeSelector "deselectAll:"

        # Enumerating Table Rows
        enumerateAvailableRowViewsUsingBlock: @nativeSelector "enumerateAvailableRowViewsUsingBlock:"

        # Managing Type Select
        allowsTypeSelect: @nativeSelector "allowsTypeSelect"
        setAllowsTypeSelect: @nativeSelector "setAllowsTypeSelect:"

        # Getting and Setting Column Focus
        focusedColumn: @nativeSelector "focusedColumn"
        setFocusedColumn: @nativeSelector "setFocusedColumn:"
        shouldFocusCell: @nativeSelector "shouldFocusCell:atColumn:row:"

        # Table Dimensions
        numberOfColumns: @nativeSelector "numberOfColumns"
        numberOfRows: @nativeSelector "numberOfRows"

        # Displaying Cell
        preparedCell: @nativeSelector "preparedCellAtColumn:row:"

        # Getting and Setting Floating Rows
        floatsGroupRows: @nativeSelector "floatsGroupRows"
        setFloatsGroupRows: @nativeSelector "setFloatsGroupRows:"

        # Editing Cells
        editColumn: @nativeSelector "editColumn:row:withEvent:select:"
        editedColumn: @nativeSelector "editedColumn"
        editedRow: @nativeSelector "editedRow"
        performClickOnCell: @nativeSelector "performClickOnCellAtColumn:row:"

        # Setting Auxiliary Views
        @instanceProperty "headerView"
        @instanceProperty "cornerView"

        # Layout Support
        rectOfColumn: @nativeSelector "rectOfColumn:"
        rectOfRow: @nativeSelector "rectOfRow:"
        rowsInRect: @nativeSelector "rowsInRect:"
        columnIndexesInRect: @nativeSelector "columnIndexesInRect:"
        columnAtPoint: @nativeSelector "columnAtPoint:"
        rowAtPoint: @nativeSelector "rowAtPoint:"
        frameOfCell: @nativeSelector "frameOfCellAtColumn:row:"
        @instanceProperty "columnAutoresizingStyle"
        sizeLastColumnToFit: @nativeSelector "sizeLastColumnToFit"
        noteNumberOfRowsChanged: @nativeSelector "noteNumberOfRowsChanged"
        tile: @nativeSelector "tile"
        sizeToFit: @nativeSelector "sizeToFit"
        noteHeightOfRowsWithIndexesChanged: @nativeSelector "noteHeightOfRowsWithIndexesChanged:"
        columnsInRect: @nativeSelector "columnsInRect:" # Deprecated in OS X v10.5

        # Drawing
        drawRow: @nativeSelector "drawRow:clipRect:"
        drawGrid: @nativeSelector "drawGridInClipRect:"
        highlightSelection: @nativeSelector "highlightSelectionInClipRect:"
        drawBackground: @nativeSelector "drawBackgroundInClipRect:"

        # Scrolling
        scrollRowToVisible: @nativeSelector "scrollRowToVisible:"
        scrollColumnToVisible: @nativeSelector "scrollColumnToVisible:"

        # Table Column State Persistence
        @instanceProperty "autosaveName"
        @instanceProperty "autosaveTableColumns"

        # Setting the Delegate
        @autoboxProperty "delegate", NSTableViewDelegate

        # Highlightable Column Headers
        @instanceProperty "highlightedTableColumn"

        # Dragging
        dragImageForRows: @nativeSelector "dragImageForRowsWithIndexes:tableColumns:event:offset:"
        canDragRows: @nativeSelector "canDragRowsWithIndexes:atPoint:"
        setDraggingSourceOperationMask: @nativeSelector "setDraggingSourceOperationMask:forLocal:"
        @instanceProperty "verticalMotionCanBeginDrag"
        @instanceProperty "draggingDestinationFeedbackStyle"
        setDropRow: @nativeSelector "setDropRow:dropOperation:"

        # Sorting
        @instanceProperty "sortDescriptors"

        # Text Delegate Methods
        textShouldBeginEditing: @nativeSelector "textShouldBeginEditing:"
        textDidBeginEditing: @nativeSelector "textDidBeginEditing:"
        textDidChange: @nativeSelector "textDidChange:"
        textShouldEndEditing: @nativeSelector "textShouldEndEditing:"
        textDidEndEditing: @nativeSelector "textDidEndEditing:"

        # Deprecated Methods
        drawsGrid: @nativeSelector "drawsGrid" # Deprecated in OS X v10.3
        selectColumn: @nativeSelector "selectColumn:byExtendingSelection:" # Deprecated in OS X v10.3
        selectedColumnEnumerator: @nativeSelector "selectedColumnEnumerator" # Deprecated in OS X v10.3
        selectedRowEnumerator: @nativeSelector "selectedRowEnumerator" # Deprecated in OS X v10.3
        selectRow: @nativeSelector "selectRow:byExtendingSelection:" # Deprecated in OS X v10.3
        setDrawsGrid: @nativeSelector "setDrawsGrid:" # Deprecated in OS X v10.3
        autoresizesAllColumnsToFit: @nativeSelector "autoresizesAllColumnsToFit" # Deprecated in OS X v10.4
        dragImage: @nativeSelector "dragImageForRows:event:dragImageOffset:" # Deprecated in OS X v10.4
        setAutoresizesAllColumnsToFit: @nativeSelector "setAutoresizesAllColumnsToFit:" # Deprecated in OS X v10.4
        writeRows: @nativeSelector "tableView:writeRows:toPasteboard:"  # delegate method Deprecated in OS X v10.4
