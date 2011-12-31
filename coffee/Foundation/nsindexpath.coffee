# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSIndexPath = class NSIndexPath extends NSObject
  @register()

  # Creating Index Paths
  @indexPathWithIndex: objc.invokeSelector "indexPathWithIndex:"
  @indexPathWithIndexes: objc.invokeSelector "indexPathWithIndexes:length:"
  initWithIndex: objc.invokeSelector "initWithIndex:"
  initWithIndexes: objc.invokeSelector "initWithIndexes:length:"

  # Querying Index Paths
  indexAtPosition: objc.invokeSelector "indexAtPosition:"
  indexPathByAddingIndex: objc.invokeSelector "indexPathByAddingIndex:"
  indexPathByRemovingLastIndex: objc.invokeSelector "indexPathByRemovingLastIndex"
  
  ck.instanceProperty @, "length", { set: null }
  ck.instanceProperty @, "indexes", { set: null }

  # Comparing Index Paths
  compare: objc.invokeSelector "compare:"
