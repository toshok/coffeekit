# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIAppearance"

appearances = {}

makeAppearance = (sel, o, args...) ->
    if o::constructor of appearances
      return appearances[o::constructor]

    # kind of a hack to invoke the selector on the right object
    appearance = objc.invokeSelector(sel).call(o, args...)

    # iterate over all keys in o's prototype, looking for ones whose values
    # have _ck_appearance = true set on them.
    # when we find them, we cache the typeencoding by looking it up on
    # the original class, since _UIAppearance does its own method lookup
    # and doesn't actually contain implementations of the selectors themselves.
    #
    # the code in invokeSelectorFromJS is smart enough to pull the type encoding
    # from the function object first before looking for it on the Method*
    for key of o::
      fn = o::__lookupGetter__(key) or o::__lookupSetter__(key)
      if fn
        # it's a property
        if fn._ck_appearance
          if !fn._ck_typeEncoding
            fn._ck_typeEncoding = objc.getTypeEncoding o, fn
          if fn == o::__lookupGetter__ key
            appearance.__defineGetter__ key, fn
          else
            appearance.__defineSetter__ key, fn
      else
        # it's a method
        fn = o::[key]
        if fn._ck_appearance
          if !fn._ck_typeEncoding
            fn._ck_typeEncoding = objc.getTypeEncoding o, fn
          appearance[key] = fn

    appearances[o::constructor] = appearance
    return appearance


exports.UIAppearance = class UIAppearance extends foundation.Protocol
  # Appearance Methods
  @appearance:                @requiredMethod("appearance", { tramp: -> makeAppearance "appearance", @ })
  @appearanceWhenContainedIn: @requiredMethod("appearanceWhenContainedIn:", {tramp: (args...) -> makeAppearance "appearanceWhenContainedIn", @, args...} )

  @register()

