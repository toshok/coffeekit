# This file is part of coffeekit.  for licensing information, see the LICENSE file

ck.register exports.NSButton = class NSButton extends NSControl

        @newWithFrame: (frame) -> @newWith initWith: "Frame", args: [frame]
                
        # Configuring Buttons
        @instanceProperty "buttonType"

        getPeriodicDelay: @nativeSelector "getPeriodicDelay:interval:"
        setPeriodicDelay: @nativeSelector "setPeriodicDelay:interval:"

        @instanceProperty "attributedTitle"
        @instanceProperty "attributedAlternateTitle"
        @instanceProperty "title"
        @instanceProperty "alternateTitle"
        @instanceProperty "sound"        

        setTitleWithMnemonic: @nativeSelector "setTitleWithMnemonic:" # Deprecated in OS X v10.8

        # Configuring Button Images
        @instanceProperty "image"
        @instanceProperty "alternateImage"
        @instanceProperty "imagePosition"
        @instanceProperty "isBordered", set: "setBordered:"
        @instanceProperty "isTransparent", set: "setTransparent:"
        @instanceProperty "bezelStyle"
        @instanceProperty "showsBorderOnlyWhileMouseInside"

        # Managing Button State
        @instanceProperty "allowsMixedState"
        @instanceProperty "state"

        setNextState: @nativeSelector "setNextState"
        highlight: @nativeSelector "highlight:"

        # Accessing Key Equivalents
        @instanceProperty "keyEquivalent"
        @instanceProperty "keyEquivalentModifierMask"

        # Handling Keyboard Events
        performKeyEquivalent: @nativeSelector "performKeyEquivalent:"


        @instanceProperty "clicked", {
                set: (v) ->
                        if v
                                @proxy = new NSControlProxy v
                                @target = @proxy
                                @action = @proxy.proxyAction
                        else
                                @proxy = null
                                @target = null
                                @action = null
                        undefined
                get: null # this should really be an actual getter that returns the callback...
        }
