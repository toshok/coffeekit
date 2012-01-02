# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSIndexPath = class NSIndexPath extends NSObject
  # Creating Index Paths
  @indexPathWithIndex: @nativeSelector "indexPathWithIndex:"
  @indexPathWithIndexes: @nativeSelector "indexPathWithIndexes:length:"
  initWithIndex: @nativeSelector "initWithIndex:"
  initWithIndexes: @nativeSelector "initWithIndexes:length:"

  # Querying Index Paths
  indexAtPosition: @nativeSelector "indexAtPosition:"
  indexPathByAddingIndex: @nativeSelector "indexPathByAddingIndex:"
  indexPathByRemovingLastIndex: @nativeSelector "indexPathByRemovingLastIndex"
  
  @instanceProperty "length", { set: null }
  @instanceProperty "indexes", { set: null }

  # Comparing Index Paths
  compare: @nativeSelector "compare:"

  @register()
