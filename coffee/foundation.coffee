# This file is part of coffeekit.  for licensing information, see the LICENSE file

objc.requireFramework "Foundation"

ck = require "./coffeekit"

exports.NSComparisonResult = NSComparisonResult = ck.makeEnum
   getTypeSignature: -> "i"

   ascending: -1
   same: 0
   descending: 1
