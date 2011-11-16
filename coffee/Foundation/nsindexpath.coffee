# This file is part of coffeekit.  for licensing information, see the LICENSE file

class NSIndexPath extends NSObject

  constructor: (handle) -> super (if handle then handle else objc.allocInstance(@.constructor.name))

  # Creating Index Paths
  @indexPathWithIndex: objc.invokeSelector ("indexPathWithIndex:")
  @indexPathWithIndexes: objc.invokeSelector ("indexPathWithIndexes:length:")
  initWithIndex: objc.invokeSelector ("initWithIndex:")
  initWithIndexes: objc.invokeSelector ("initWithIndexes:length:")

  # Querying Index Paths
  indexAtPosition: objc.invokeSelector ("indexAtPosition:")
  indexPathByAddingIndex: objc.invokeSelector ("indexPathByAddingIndex:")
  indexPathByRemovingLastIndex: objc.invokeSelector ("indexPathByRemovingLastIndex")
  
  ck.addProperty @::, "length", { set: null }
  ck.addProperty @::, "indexes", { set: null }

  # Comparing Index Paths
  compare: objc.invokeSelector ("compare:")

new ck.RegisterAttribute NSIndexPath, "NSIndexPath"
exports.NSIndexPath = NSIndexPath