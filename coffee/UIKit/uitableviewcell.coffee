# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITableViewCell"
exports.UITableViewCell = class UITableViewCell extends UIView
  # Initializing a UITableViewCell Object
  initWithStyle: @nativeSelector "initWithStyle:reuseIdentifier:"
  initWithFrame: @nativeSelector "initWithFrame:reuseIdentifier:" # Deprecated in iOS 3.0

  # Reusing Cells
  @instanceProperty "reuseIdentifier"
  prepareForReuse: @nativeSelector "prepareForReuse"

  # Managing Text as Cell Content
  @instanceProperty "textLabel", { set: null }
  @instanceProperty "detailTextLabel", { set: null }
  @instanceProperty "font" # Deprecated in iOS 3.0
  @instanceProperty "lineBreakMode" # Deprecated in iOS 3.0
  @instanceProperty "selectedTextColor" # Deprecated in iOS 3.0
  @instanceProperty "text" # Deprecated in iOS 3.0
  @instanceProperty "textAlignment" # Deprecated in iOS 3.0
  @instanceProperty "textColor" # Deprecated in iOS 3.0

  # Managing Images as Cell Content
  @instanceProperty "imageView"
  @instanceProperty "image" # Deprecated in iOS 3.0
  @instanceProperty "selectedImage" # Deprecated in iOS 3.0

  # Accessing Views of the Cell Object
  @instanceProperty "contentView"
  @instanceProperty "backgroundView"
  @instanceProperty "selectedBackgroundView"
  @instanceProperty "multipleSelectionBackgroundView"

  # Managing Accessory Views
  @instanceProperty "accessoryType"
  @instanceProperty "accessoryView"
  @instanceProperty "editingAccessoryType"
  @instanceProperty "editingAccessoryView"
  @instanceProperty "hidesAccessoryWhenEditing" # Deprecated in iOS 3.0

  # Managing Cell Selection and Highlighting
  setSelected:    @nativeSelector "setSelected:animated:"
  setHighlighted: @nativeSelector "setHighlighted:animated:"
  @instanceProperty "selected", { set: (v) -> @setSelected v, false }
  @instanceProperty "selectionStyle"
  @instanceProperty "highlighted", { set: (v) -> @setHighlighted v, false }

  # Editing the Cell
  setEditing: @nativeSelector "setEditing:animated:"
  @instanceProperty "editing", { set: (v) -> @setEditing v, false }
  @instanceProperty "editingStyle"
  @instanceProperty "showingDeleteConfirmation"
  @instanceProperty "showsReorderControl"

  # Adjusting to State Transitions
  willTransitionToState: @nativeSelector "willTransitionToState:"
  didTransitionToState:  @nativeSelector "didTransitionToState:"

  # Managing Content Indentation
  @instanceProperty "indentationLevel"
  @instanceProperty "indentationWidth"
  @instanceProperty "shouldIndentWhileEditing"

  # Managing Targets and Actions

  # These properties are deprecated as of iOS 3.0. Instead, use the tableView:commitEditingStyle:forRowAtIndexPath: method of the UITableViewDataSource protocol or the tableView:accessoryButtonTappedForRowWithIndexPath: method of the UITableViewDelegate protocol.

  @instanceProperty "accessoryAction" # Deprecated in iOS 3.0
  @instanceProperty "editAction" # Deprecated in iOS 3.0
  @instanceProperty "target" # Deprecated in iOS 3.0

  @register()
