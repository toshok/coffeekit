# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSRect = class NSRect
  @getTypeSignature: -> "{CGRect={CGPoint=ff}{CGSize=ff}}"

  constructor: (@x, @y, @width, @height) ->
