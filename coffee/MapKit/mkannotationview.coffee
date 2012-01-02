# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKAnnotationView = class MKAnnotationView extends ui.UIView
  # Initializing and Preparing the View
  initWithAnnotation: @nativeSelector "initWithAnnotation:reuseIdentifier:"
  prepareForReuse: @nativeSelector "prepareForReuse"

  # Getting and Setting Attributes
  @instanceProperty "enabled"
  @instanceProperty "image"
  @instanceProperty "highlighted"
  @instanceProperty "annotation"
  @instanceProperty "centerOffset"
  @instanceProperty "calloutOffset"
  @instanceProperty "reuseIdentifier"

  # Managing the Selection State
  setSelected: @nativeSelector "setSelected:animated:"
  @instanceProperty "selected", { set: (v) -> @setSelected v, false }

  # Managing Callout Views
  @instanceProperty "canShowCallout"
  @instanceProperty "leftCalloutAccessoryView"
  @instanceProperty "rightCalloutAccessoryView"

  # Supporting Drag Operations
  @instanceProperty "draggable"
  setDragState: @nativeSelector "setDragState:animated:"
  @instanceProperty "dragState", { set: (v) -> @setDragState v, false }

  @register()
