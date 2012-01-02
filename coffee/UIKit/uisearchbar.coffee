# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISearchBar"
exports.UISearchBar = class UISearchBar extends foundation.NSObject
  # Text Content
  @instanceProperty "placeholder"
  @instanceProperty "prompt"
  @instanceProperty "text"

  # Display Attributes
  @instanceProperty "barStyle"
  @instanceProperty "tintColor"
  @instanceProperty "translucent"

  # Text Input Properties
  @instanceProperty "autocapitalizationType"
  @instanceProperty "autocorrectionType"
  @instanceProperty "keyboardType"
  @instanceProperty "spellCheckingType"

  # Button Configuration
  @instanceProperty "showsBookmarkButton"
  @instanceProperty "showsCancelButton", { set: (v) -> @setShowsCancelButton v, false }
  setShowsCancelButton: @nativeSelector "setShowsCancelButton:animated:"
  @instanceProperty "showsSearchResultsButton"
  @instanceProperty "searchResultsButtonSelected"

  # Scope Buttons
  @instanceProperty "scopeButtonTitles"
  @instanceProperty "selectedScopeButtonIndex"
  @instanceProperty "showsScopeBar"

  # Delegate
  @autoboxProperty "delegate", UISearchBar

  # Customizing Appearance
  imageForSearchBarIcon:                 @nativeSelector "imageForSearchBarIcon:state:"
  setImageForSearchBarIcon:              @nativeSelector "setImage:forSearchBarIcon:state:"
  positionAdjustmentForSearchBarIcon:    @nativeSelector "positionAdjustmentForSearchBarIcon:"
  setPositionAdjustmentForSearchBarIcon: @nativeSelector "setPositionAdjustment:forSearchBarIcon:"
  scopeBarButtonBackgroundImage:         @nativeSelector "scopeBarButtonBackgroundImageForState:"
  setScopeBarButtonBackgroundImage:      @nativeSelector "setScopeBarButtonBackgroundImage:forState:"
  scopeBarButtonDividerImage:            @nativeSelector "scopeBarButtonDividerImageForLeftSegmentState:rightSegmentState:"
  setScopeBarButtonDividerImage:         @nativeSelector "setScopeBarButtonDividerImage:forLeftSegmentState:rightSegmentState:"
  scopeBarButtonTitleTextAttributes:     @nativeSelector "scopeBarButtonTitleTextAttributesForState:"
  setScopeBarButtonTitleTextAttributes:  @nativeSelector "setScopeBarButtonTitleTextAttributes:forState:"
  searchFieldBackgroundImage:            @nativeSelector "searchFieldBackgroundImageForState:"
  setSearchFieldBackgroundImage:         @nativeSelector "setSearchFieldBackgroundImage:forState:"
  @instanceProperty "backgroundImage"
  @instanceProperty "scopeBarBackgroundImage"
  @instanceProperty "searchFieldBackgroundPositionAdjustment"
  @instanceProperty "searchTextPositionAdjustment"

  @register()
