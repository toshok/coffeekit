# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIManagedDocument"
exports.UIManagedDocument = class UIManagedDocument extends UIDocument
  # Managing the Core Data Stack
  configurePersistentStoreCoordinator: @nativeSelector "configurePersistentStoreCoordinatorForURL:ofType:modelConfiguration:storeOptions:error:"
  persistentStoreType:                 @nativeSelector "persistentStoreTypeForFileType:"
  @instanceProperty "managedObjectContext"
  @instanceProperty "managedObjectModel"
  @instanceProperty "persistentStoreOptions"
  @instanceProperty "modelConfiguration"

  # Customizing Read and Write Operations
  readAdditionalContent:  @nativeSelector "readAdditionalContentFromURL:error:"
  additionalContent:      @nativeSelector "additionalContentForURL:error:"
  writeAdditionalContent: @nativeSelector "writeAdditionalContent:toURL:originalContentsURL:error:"

  # Naming the Persistent Store File
  @persistentStoreName: @nativeSelector "persistentStoreName"

  @register()
