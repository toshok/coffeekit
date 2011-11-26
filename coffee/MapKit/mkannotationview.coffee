# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKAnnotationView extends ui.UIView
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Initializing and Preparing the View
  initWithAnnotation: objc.invokeSelector ("initWithAnnotation:reuseIdentifier:")
  prepareForReuse: objc.invokeSelector ("prepareForReuse")

  # Getting and Setting Attributes
  ck.addProperty @::, "enabled"
  ck.addProperty @::, "image"
  ck.addProperty @::, "highlighted"
  ck.addProperty @::, "annotation"
  ck.addProperty @::, "centerOffset"
  ck.addProperty @::, "calloutOffset"
  ck.addProperty @::, "reuseIdentifier"

  # Managing the Selection State
  setSelected: objc.invokeSelector ("setSelected:animated:")
  ck.addProperty @::, "selected", { set: (v) -> @setSelected v, false }

  # Managing Callout Views
  ck.addProperty @::, "canShowCallout"
  ck.addProperty @::, "leftCalloutAccessoryView"
  ck.addProperty @::, "rightCalloutAccessoryView"

  # Supporting Drag Operations
  ck.addProperty @::, "draggable"
  setDragState: objc.invokeSelector ("setDragState:animated:")
  ck.addProperty @::, "dragState", { set: (v) -> @setDragState v, false }

new ck.RegisterAttribute MKAnnotationView, "MKAnnotationView"
exports.MKAnnotationView = MKAnnotationView
