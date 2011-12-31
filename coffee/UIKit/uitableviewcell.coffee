# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITableViewCell"
exports.UITableViewCell = class UITableViewCell extends UIView
  @register()

  # Initializing a UITableViewCell Object
  initWithStyle: objc.invokeSelector "initWithStyle:reuseIdentifier:"
  initWithFrame: objc.invokeSelector "initWithFrame:reuseIdentifier:" # Deprecated in iOS 3.0

  # Reusing Cells
  ck.instanceProperty @, "reuseIdentifier"
  prepareForReuse: objc.invokeSelector "prepareForReuse"

  # Managing Text as Cell Content
  ck.instanceProperty @, "textLabel", { set: null }
  ck.instanceProperty @, "detailTextLabel", { set: null }
  ck.instanceProperty @, "font" # Deprecated in iOS 3.0
  ck.instanceProperty @, "lineBreakMode" # Deprecated in iOS 3.0
  ck.instanceProperty @, "selectedTextColor" # Deprecated in iOS 3.0
  ck.instanceProperty @, "text" # Deprecated in iOS 3.0
  ck.instanceProperty @, "textAlignment" # Deprecated in iOS 3.0
  ck.instanceProperty @, "textColor" # Deprecated in iOS 3.0

  # Managing Images as Cell Content
  ck.instanceProperty @, "imageView"
  ck.instanceProperty @, "image" # Deprecated in iOS 3.0
  ck.instanceProperty @, "selectedImage" # Deprecated in iOS 3.0

  # Accessing Views of the Cell Object
  ck.instanceProperty @, "contentView"
  ck.instanceProperty @, "backgroundView"
  ck.instanceProperty @, "selectedBackgroundView"
  ck.instanceProperty @, "multipleSelectionBackgroundView"

  # Managing Accessory Views
  ck.instanceProperty @, "accessoryType"
  ck.instanceProperty @, "accessoryView"
  ck.instanceProperty @, "editingAccessoryType"
  ck.instanceProperty @, "editingAccessoryView"
  ck.instanceProperty @, "hidesAccessoryWhenEditing" # Deprecated in iOS 3.0

  # Managing Cell Selection and Highlighting
  ck.instanceProperty @, "selected", { set: (v) -> @setSelected v, false }
  ck.instanceProperty @, "selectionStyle"
  setSelected: objc.invokeSelector "setSelected:animated:"
  ck.instanceProperty @, "highlighted", { set: (v) -> @setHighlighted v, false }
  setHighlighted: objc.invokeSelector "setHighlighted:animated:"

  # Editing the Cell
  ck.instanceProperty @, "editing", { set: (v) -> @setEditing v, false }
  setEditing: objc.invokeSelector "setEditing:animated:"
  ck.instanceProperty @, "editingStyle"
  ck.instanceProperty @, "showingDeleteConfirmation"
  ck.instanceProperty @, "showsReorderControl"

  # Adjusting to State Transitions
  willTransitionToState: objc.invokeSelector "willTransitionToState:"
  didTransitionToState: objc.invokeSelector "didTransitionToState:"

  # Managing Content Indentation
  ck.instanceProperty @, "indentationLevel"
  ck.instanceProperty @, "indentationWidth"
  ck.instanceProperty @, "shouldIndentWhileEditing"

  # Managing Targets and Actions

  # These properties are deprecated as of iOS 3.0. Instead, use the tableView:commitEditingStyle:forRowAtIndexPath: method of the UITableViewDataSource protocol or the tableView:accessoryButtonTappedForRowWithIndexPath: method of the UITableViewDelegate protocol.

  ck.instanceProperty @, "accessoryAction" # Deprecated in iOS 3.0
  ck.instanceProperty @, "editAction" # Deprecated in iOS 3.0
  ck.instanceProperty @, "target" # Deprecated in iOS 3.0
