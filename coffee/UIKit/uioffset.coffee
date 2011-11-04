#console.log "UIOffset"
class UIOffset
  constructor: (@horizontal, @vertical) ->

  @__defineGetter__ "zero", -> { horizontal: 0, vertical: 0 }

exports.UIOffset = UIOffset
