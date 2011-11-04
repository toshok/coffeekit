#console.log "UISearchBar"
class UISearchBar extends foundation.NSObject

  # Text Content
  ck.addProperty @::, "placeholder"
  ck.addProperty @::, "prompt"
  ck.addProperty @::, "text"

  # Display Attributes
  ck.addProperty @::, "barStyle"
  ck.addProperty @::, "tintColor"
  ck.addProperty @::, "translucent"

  # Text Input Properties
  ck.addProperty @::, "autocapitalizationType"
  ck.addProperty @::, "autocorrectionType"
  ck.addProperty @::, "keyboardType"
  ck.addProperty @::, "spellCheckingType"

  # Button Configuration
  ck.addProperty @::, "showsBookmarkButton"
  ck.addProperty @::, "showsCancelButton", { set: (v) -> setShowsCancelButton v, false }
  setShowsCancelButton: objc.invokeSelector "setShowsCancelButton:animated:"
  ck.addProperty @::, "showsSearchResultsButton"
  ck.addProperty @::, "searchResultsButtonSelected"

  # Scope Buttons
  ck.addProperty @::, "scopeButtonTitles"
  ck.addProperty @::, "selectedScopeButtonIndex"
  ck.addProperty @::, "showsScopeBar"

  # Delegate
  ck.addProperty @::, "delegate"

  # Customizing Appearance
  ck.addProperty @::, "backgroundImage"
  imageForSearchBarIcon: objc.invokeSelector "imageForSearchBarIcon:state:"
  setImageForSearchBarIcon: objc.invokeSelector "setImage:forSearchBarIcon:state:"
  positionAdjustmentForSearchBarIcon: objc.invokeSelector "positionAdjustmentForSearchBarIcon:"
  setPositionAdjustmentForSearchBarIcon: objc.invokeSelector "setPositionAdjustment:forSearchBarIcon:"
  ck.addProperty @::, "scopeBarBackgroundImage"
  scopeBarButtonBackgroundImage: objc.invokeSelector "scopeBarButtonBackgroundImageForState:"
  setScopeBarButtonBackgroundImage: objc.invokeSelector "setScopeBarButtonBackgroundImage:forState:"
  scopeBarButtonDividerImage: objc.invokeSelector "scopeBarButtonDividerImageForLeftSegmentState:rightSegmentState:"
  setScopeBarButtonDividerImage: objc.invokeSelector "setScopeBarButtonDividerImage:forLeftSegmentState:rightSegmentState:"
  scopeBarButtonTitleTextAttributes: objc.invokeSelector "scopeBarButtonTitleTextAttributesForState:"
  setScopeBarButtonTitleTextAttributes: objc.invokeSelector "setScopeBarButtonTitleTextAttributes:forState:"
  searchFieldBackgroundImage: objc.invokeSelector "searchFieldBackgroundImageForState:"
  setSearchFieldBackgroundImage: objc.invokeSelector "setSearchFieldBackgroundImage:forState:"
  ck.addProperty @::, "searchFieldBackgroundPositionAdjustment"
  ck.addProperty @::, "searchTextPositionAdjustment"

new ck.RegisterAttribute UISearchBar, "UISearchBar"
exports.UISearchBar = UISearchBar
