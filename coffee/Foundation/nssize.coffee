# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSSize = class NSSize
  @getTypeSignature: -> "{CGSize=ff}"

  constructor: (@width, @height) ->
