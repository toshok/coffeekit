# This file is part of coffeekit.  for licensing information, see the LICENSE file

ck = require "coffeekit"
objc = require "objc"

objc.requireFramework "Foundation"

console.log "Foundation"

exports.NSComparisonResult = NSComparisonResult = ck.makeEnum
   getTypeSignature: -> "i"

   ascending: -1
   same: 0
   descending: 1
