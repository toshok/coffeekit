# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITableViewCell"
class UITableViewCell extends UIView

  # Initializing a UITableViewCell Object
  initWithStyle: objc.invokeSelector "initWithStyle:reuseIdentifier:"
  initWithFrame: objc.invokeSelector "initWithFrame:reuseIdentifier:" # Deprecated in iOS 3.0

  # Reusing Cells
  ck.addProperty @::, "reuseIdentifier"
  prepareForReuse: objc.invokeSelector "prepareForReuse"

  # Managing Text as Cell Content
  ck.addProperty @::, "textLabel", { set: null }
  ck.addProperty @::, "detailTextLabel", { set: null }
  ck.addProperty @::, "font" # Deprecated in iOS 3.0
  ck.addProperty @::, "lineBreakMode" # Deprecated in iOS 3.0
  ck.addProperty @::, "selectedTextColor" # Deprecated in iOS 3.0
  ck.addProperty @::, "text" # Deprecated in iOS 3.0
  ck.addProperty @::, "textAlignment" # Deprecated in iOS 3.0
  ck.addProperty @::, "textColor" # Deprecated in iOS 3.0

  # Managing Images as Cell Content
  ck.addProperty @::, "imageView"
  ck.addProperty @::, "image" # Deprecated in iOS 3.0
  ck.addProperty @::, "selectedImage" # Deprecated in iOS 3.0

  # Accessing Views of the Cell Object
  ck.addProperty @::, "contentView"
  ck.addProperty @::, "backgroundView"
  ck.addProperty @::, "selectedBackgroundView"
  ck.addProperty @::, "multipleSelectionBackgroundView"

  # Managing Accessory Views
  ck.addProperty @::, "accessoryType"
  ck.addProperty @::, "accessoryView"
  ck.addProperty @::, "editingAccessoryType"
  ck.addProperty @::, "editingAccessoryView"
  ck.addProperty @::, "hidesAccessoryWhenEditing" # Deprecated in iOS 3.0

  # Managing Cell Selection and Highlighting
  ck.addProperty @::, "selected", { set: (v) -> setSelected v, false }
  ck.addProperty @::, "selectionStyle"
  setSelected: objc.invokeSelector "setSelected:animated:"
  ck.addProperty @::, "highlighted", { set: (v) -> setHighlighted v, false }
  setHighlighted: objc.invokeSelector "setHighlighted:animated:"

  # Editing the Cell
  ck.addProperty @::, "editing", { set: (v) -> setEditing v, false }
  setEditing: objc.invokeSelector "setEditing:animated:"
  ck.addProperty @::, "editingStyle"
  ck.addProperty @::, "showingDeleteConfirmation"
  ck.addProperty @::, "showsReorderControl"

  # Adjusting to State Transitions
  willTransitionToState: objc.invokeSelector "willTransitionToState:"
  didTransitionToState: objc.invokeSelector "didTransitionToState:"

  # Managing Content Indentation
  ck.addProperty @::, "indentationLevel"
  ck.addProperty @::, "indentationWidth"
  ck.addProperty @::, "shouldIndentWhileEditing"

  # Managing Targets and Actions

  # These properties are deprecated as of iOS 3.0. Instead, use the tableView:commitEditingStyle:forRowAtIndexPath: method of the UITableViewDataSource protocol or the tableView:accessoryButtonTappedForRowWithIndexPath: method of the UITableViewDelegate protocol.

  ck.addProperty @::, "accessoryAction" # Deprecated in iOS 3.0
  ck.addProperty @::, "editAction" # Deprecated in iOS 3.0
  ck.addProperty @::, "target" # Deprecated in iOS 3.0

new ck.RegisterAttribute UITableViewCell, "UITableViewCell"
exports.UITableViewCell = UITableViewCell
