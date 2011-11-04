# This file is part of coffeekit.  for licensing information, see the LICENSE file

class Protocol

  @requiredMethod: (n,tramp) -> method: n, required: true, tramp: tramp
  @optionalMethod: (n) -> method: n

  @requiredProperty: (n,accessors) -> property: n, required: true, get: accessors?.get, set: accessors?.set
  @optionalProperty: (n) -> property: n

exports.Protocol = Protocol