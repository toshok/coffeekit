# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITableViewController"
exports.UITableViewController = class UITableViewController extends UIViewController
  # Initializing the UITableViewController Object
  initWithStyle: @nativeSelector("initWithStyle:").
                      returnType( -> UITableViewController).
                      paramTypes( -> [ ck.sig.Int ])

  # Getting the Table View
  @instanceProperty "tableView"

  # Configuring the Table Behavior
  @instanceProperty "clearsSelectionOnViewWillAppear"

  @register()
