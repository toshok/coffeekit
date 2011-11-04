#console.log "UIEdgeInsets"
class UIEdgeInsets
  constructor: (@top,@left,@bottom,@right) ->

  @__defineGetter__ "zero", -> { top: 0, left: 0, bottom: 0, right: 0 }

exports.UIEdgeInsets = UIEdgeInsets
