# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.Protocol = class Protocol

  @register: (n = @name) ->
  @mixinProtocol: (p) -> new ck.MixinProtocolAttribute @, p

  @requiredMethod: (n,args) -> method: n, required: true, tramp: args?.tramp, sig: args?.sig
  @optionalMethod: (n,args) -> method: n, tramp: args?.tramp, sig: args?.sig

  @requiredProperty: (n,accessors) -> property: n, required: true, get: accessors?.get, set: accessors?.set
  @optionalProperty: (n,accessors) -> property: n, get: accessors?.get, set: accessors?.set
