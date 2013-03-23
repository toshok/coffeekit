# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSIndexPath = class NSIndexPath extends NSObject
  constructor: ->
        super
  # Creating Index Paths
  @indexPathWithIndex: @nativeSelector "indexPathWithIndex:"
  @indexPathWithIndexes: @nativeSelector "indexPathWithIndexes:length:"
  initWithIndex: @nativeSelector("initWithIndex:").
                         returns( -> NSIndexPath ).
                          params( -> [ ck.sig.UInt ])
  initWithIndexes: @nativeSelector("initWithIndexes:length:").
                           returns( -> NSIndexPath )#.
                            #params( -> [ (ck.sig.PointerTo ck.sig.UInt), ck.sig.UInt ])

  # Querying Index Paths
  indexAtPosition: @nativeSelector("indexAtPosition:").
                           returns( -> ck.sig.UInt ).
                            params( -> [ ck.sig.UInt ] )

  indexPathByAddingIndex: @nativeSelector("indexPathByAddingIndex:").
                                  returns( -> NSIndexPath ).
                                   params( -> [ ck.sig.UInt ])
  indexPathByRemovingLastIndex: @nativeSelector("indexPathByRemovingLastIndex").
                                        returns( -> NSIndexPath )
  
  @instanceProperty "length", { set: null }
  @instanceProperty "indexes", { set: null }

  # Comparing Index Paths
  compare: @nativeSelector("compare:").
                   returns( -> NSComparisonResult ).
                    params( -> [ NSIndexPath ] )

  @register()
