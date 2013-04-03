# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIEdgeInsets"
exports.UIEdgeInsets = class UIEdgeInsets
  constructor: (@top,@left,@bottom,@right) ->

  ck.staticProperty UIEdgeInsets, "zero", get: (-> { top: 0, left: 0, bottom: 0, right: 0 }), set: null
