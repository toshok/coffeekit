# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISearchDisplayController"
exports.UISearchDisplayController = class UISearchDisplayController extends foundation.NSObject
  # Initialization
  initWithSearchBar: @nativeSelector "initWithSearchBar:contentsController:"

  # Displaying the Search Interface
  @instanceProperty "active", { set: (v) -> @setActive v, false }
  setActive: @nativeSelector "setActive:animated:"

  # Configuration
  @autoboxProperty "delegate", UISearchDisplayDelegate
  @instanceProperty "searchBar"
  @instanceProperty "searchContentsController"
  @instanceProperty "searchResultsTableView"
  @instanceProperty "searchResultsDataSource"
  @instanceProperty "searchResultsDelegate"
  @instanceProperty "searchResultsTitle"

  @register()
