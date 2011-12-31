# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIOffset"
exports.UIOffset = class UIOffset
  constructor: (@horizontal, @vertical) ->

  @__defineGetter__ "zero", -> { horizontal: 0, vertical: 0 }
