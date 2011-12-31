# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISearchDisplayController"
exports.UISearchDisplayController = class UISearchDisplayController extends foundation.NSObject
  @register()

  # Initialization
  initWithSearchBar: objc.invokeSelector "initWithSearchBar:contentsController:"

  # Displaying the Search Interface
  ck.instanceProperty @, "active", { set: (v) -> @setActive v, false }
  setActive: objc.invokeSelector "setActive:animated:"

  # Configuration
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UISearchDisplayControllerDelegate) }
  ck.instanceProperty @, "searchBar"
  ck.instanceProperty @, "searchContentsController"
  ck.instanceProperty @, "searchResultsTableView"
  ck.instanceProperty @, "searchResultsDataSource"
  ck.instanceProperty @, "searchResultsDelegate"
  ck.instanceProperty @, "searchResultsTitle"
