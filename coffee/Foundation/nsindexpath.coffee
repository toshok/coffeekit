# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSIndexPath = class NSIndexPath extends NSObject
  # Creating Index Paths
  @indexPathWithIndex: @nativeSelector "indexPathWithIndex:"
  @indexPathWithIndexes: @nativeSelector "indexPathWithIndexes:length:"
  initWithIndex: @nativeSelector("initWithIndex:").
                      returnType( -> NSIndexPath ).
                      paramTypes( -> [ ck.sig.UInt ])
  initWithIndexes: @nativeSelector("initWithIndexes:length:").
                        returnType( -> NSIndexPath ).
                        paramTypes( -> [ (ck.sig.PointerTo ck.sig.UInt), ck.sig.UInt ])

  # Querying Index Paths
  indexAtPosition: @nativeSelector("indexAtPosition:").
                        returnType( -> ck.sig.UInt ).
                        paramTypes( -> [ ck.sig.UInt ] )

  indexPathByAddingIndex: @nativeSelector("indexPathByAddingIndex:").
                               returnType( -> NSIndexPath ).
                               paramTypes( -> [ ck.sig.UInt ])
  indexPathByRemovingLastIndex: @nativeSelector("indexPathByRemovingLastIndex").
                                     returnType( -> NSIndexPath )
  
  @instanceProperty "length", { set: null }
  @instanceProperty "indexes", { set: null }

  # Comparing Index Paths
  compare: @nativeSelector("compare:").
                returnType( -> NSComparisonResult ).
                paramTypes( -> [ NSIndexPath ] )

  @register()
