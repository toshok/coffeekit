# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKAnnotationView = class MKAnnotationView extends ui.UIView
  @register()

  # Initializing and Preparing the View
  initWithAnnotation: objc.invokeSelector "initWithAnnotation:reuseIdentifier:"
  prepareForReuse: objc.invokeSelector "prepareForReuse"

  # Getting and Setting Attributes
  ck.instanceProperty @, "enabled"
  ck.instanceProperty @, "image"
  ck.instanceProperty @, "highlighted"
  ck.instanceProperty @, "annotation"
  ck.instanceProperty @, "centerOffset"
  ck.instanceProperty @, "calloutOffset"
  ck.instanceProperty @, "reuseIdentifier"

  # Managing the Selection State
  setSelected: objc.invokeSelector "setSelected:animated:"
  ck.instanceProperty @, "selected", { set: (v) -> @setSelected v, false }

  # Managing Callout Views
  ck.instanceProperty @, "canShowCallout"
  ck.instanceProperty @, "leftCalloutAccessoryView"
  ck.instanceProperty @, "rightCalloutAccessoryView"

  # Supporting Drag Operations
  ck.instanceProperty @, "draggable"
  setDragState: objc.invokeSelector "setDragState:animated:"
  ck.instanceProperty @, "dragState", { set: (v) -> @setDragState v, false }
