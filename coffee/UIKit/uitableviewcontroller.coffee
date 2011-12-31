# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITableViewController"
exports.UITableViewController = class UITableViewController extends UIViewController
  @register()

  # Initializing the UITableViewController Object
  initWithStyle: objc.invokeSelector "initWithStyle:"

  # Getting the Table View
  ck.instanceProperty @, "tableView"

  # Configuring the Table Behavior
  ck.instanceProperty @, "clearsSelectionOnViewWillAppear"
