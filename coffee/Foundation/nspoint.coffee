# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSPoint = class NSPoint
  @getTypeSignature: -> "{CGPoint=ff}"

  constructor: (@x, @y) ->
