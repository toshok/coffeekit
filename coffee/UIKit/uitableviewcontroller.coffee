#console.log "UITableViewController"
class UITableViewController extends UIViewController

  # Initializing the UITableViewController Object
  initWithStyle: objc.invokeSelector "initWithStyle:"

  # Getting the Table View
  ck.addProperty @::, "tableView"

  # Configuring the Table Behavior
  ck.addProperty @::, "clearsSelectionOnViewWillAppear"

new ck.RegisterAttribute UITableViewController, "UITableViewController"
exports.UITableViewController = UITableViewController
