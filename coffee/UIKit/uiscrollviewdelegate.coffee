# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIScrollViewDelegate"

exports.UIScrollViewDelegate = class UIScrollViewDelegate extends foundation.Protocol

  # Responding to Scrolling and Dragging
  didScroll:             @optionalMethod "scrollViewDidScroll:"
  willBeginDragging:     @optionalMethod "scrollViewWillBeginDragging:"
  willEndDragging:       @optionalMethod "scrollViewWillEndDragging:withVelocity:targetContentOffset:"
  didEndDragging:        @optionalMethod "scrollViewDidEndDragging:willDecelerate:"
  shouldScrollToTop:     @optionalMethod "scrollViewShouldScrollToTop:"
  didScrollToTop:        @optionalMethod "scrollViewDidScrollToTop:"
  willBeginDecelerating: @optionalMethod "scrollViewWillBeginDecelerating:"
  didEndDecelerating:    @optionalMethod "scrollViewDidEndDecelerating:"

  # Managing Zooming
  viewForZoomingInScrollView: @optionalMethod "viewForZoomingInScrollView:"
  willBeginZooming:           @optionalMethod "scrollViewWillBeginZooming:withView:"
  didEndZooming:              @optionalMethod "scrollViewDidEndZooming:withView:atScale:"
  didZoom:                    @optionalMethod "scrollViewDidZoom:"

  # Responding to Scrolling Animations
  didEndScrollingAnimation:   @optionalMethod "scrollViewDidEndScrollingAnimation:"

  @register()