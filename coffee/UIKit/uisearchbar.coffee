# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISearchBar"
exports.UISearchBar = class UISearchBar extends foundation.NSObject
  @register()

  # Text Content
  ck.instanceProperty @, "placeholder"
  ck.instanceProperty @, "prompt"
  ck.instanceProperty @, "text"

  # Display Attributes
  ck.instanceProperty @, "barStyle"
  ck.instanceProperty @, "tintColor"
  ck.instanceProperty @, "translucent"

  # Text Input Properties
  ck.instanceProperty @, "autocapitalizationType"
  ck.instanceProperty @, "autocorrectionType"
  ck.instanceProperty @, "keyboardType"
  ck.instanceProperty @, "spellCheckingType"

  # Button Configuration
  ck.instanceProperty @, "showsBookmarkButton"
  ck.instanceProperty @, "showsCancelButton", { set: (v) -> @setShowsCancelButton v, false }
  setShowsCancelButton: objc.invokeSelector "setShowsCancelButton:animated:"
  ck.instanceProperty @, "showsSearchResultsButton"
  ck.instanceProperty @, "searchResultsButtonSelected"

  # Scope Buttons
  ck.instanceProperty @, "scopeButtonTitles"
  ck.instanceProperty @, "selectedScopeButtonIndex"
  ck.instanceProperty @, "showsScopeBar"

  # Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UISearchBar) }

  # Customizing Appearance
  ck.instanceProperty @, "backgroundImage"
  imageForSearchBarIcon: objc.invokeSelector "imageForSearchBarIcon:state:"
  setImageForSearchBarIcon: objc.invokeSelector "setImage:forSearchBarIcon:state:"
  positionAdjustmentForSearchBarIcon: objc.invokeSelector "positionAdjustmentForSearchBarIcon:"
  setPositionAdjustmentForSearchBarIcon: objc.invokeSelector "setPositionAdjustment:forSearchBarIcon:"
  ck.instanceProperty @, "scopeBarBackgroundImage"
  scopeBarButtonBackgroundImage: objc.invokeSelector "scopeBarButtonBackgroundImageForState:"
  setScopeBarButtonBackgroundImage: objc.invokeSelector "setScopeBarButtonBackgroundImage:forState:"
  scopeBarButtonDividerImage: objc.invokeSelector "scopeBarButtonDividerImageForLeftSegmentState:rightSegmentState:"
  setScopeBarButtonDividerImage: objc.invokeSelector "setScopeBarButtonDividerImage:forLeftSegmentState:rightSegmentState:"
  scopeBarButtonTitleTextAttributes: objc.invokeSelector "scopeBarButtonTitleTextAttributesForState:"
  setScopeBarButtonTitleTextAttributes: objc.invokeSelector "setScopeBarButtonTitleTextAttributes:forState:"
  searchFieldBackgroundImage: objc.invokeSelector "searchFieldBackgroundImageForState:"
  setSearchFieldBackgroundImage: objc.invokeSelector "setSearchFieldBackgroundImage:forState:"
  ck.instanceProperty @, "searchFieldBackgroundPositionAdjustment"
  ck.instanceProperty @, "searchTextPositionAdjustment"
