#console.log "UISearchDisplayController"
class UISearchDisplayController extends foundation.NSObject

  # Initialization
  initWithSearchBar: objc.invokeSelector ("initWithSearchBar:contentsController:")

  # Displaying the Search Interface
  ck.addProperty @::, "active", { set: (v) -> setActive v, false }
  setActive: objc.invokeSelector ("setActive:animated:")

  # Configuration
  ck.addProperty @::, "delegate"
  ck.addProperty @::, "searchBar"
  ck.addProperty @::, "searchContentsController"
  ck.addProperty @::, "searchResultsTableView"
  ck.addProperty @::, "searchResultsDataSource"
  ck.addProperty @::, "searchResultsDelegate"
  ck.addProperty @::, "searchResultsTitle"

new ck.RegisterAttribute UISearchDisplayController, "UISearchDisplayController"
exports.UISearchDisplayController = UISearchDisplayController
