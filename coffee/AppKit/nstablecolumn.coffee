# This file is part of coffeekit.  for licensing information, see the LICENSE file

ck.register exports.NSTableColumn = class NSTableColumn extends foundation.NSObject

  @newWithIdentifier: (identifier) -> @newWith initWith: "Identifier", args: [identifier]
        
  # Creating an NSTableColumn
  initWithIdentifier: @nativeSelector "initWithIdentifier:"

  # Setting the NSTableView
  @instanceProperty "tableView"

  # Controlling Size
  @instanceProperty "width"
  @instanceProperty "minWidth"
  @instanceProperty "maxWidth"
  @instanceProperty "resizingMask"
  sizeToFit: @nativeSelector "sizeToFit"

  # Setting Component Cells
  @instanceProperty "headerCell"
  @instanceProperty "dataCell"
  dataCellForRow: @nativeSelector "dataCellForRow:"

  # Setting the Identifier
  @instanceProperty "identifier"

  # Controlling Editability
  @instanceProperty "editable", get: "isEditable"

  # Sorting
  @instanceProperty "sortDescriptorPrototype"

  # Setting Column Visibility
  @instanceProperty "hidden", get: "isHidden"

  # Setting Tool Tips
  @instanceProperty "headerToolTip"

  # Deprecated Methods
  @instanceProperty "resizable", get: "isResizable" # Deprecated in OS X v10.4
