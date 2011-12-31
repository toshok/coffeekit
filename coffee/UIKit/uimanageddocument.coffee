# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIManagedDocument"
exports.UIManagedDocument = class UIManagedDocument extends UIDocument
  @register()

  # Managing the Core Data Stack
  configurePersistentStoreCoordinator: objc.invokeSelector "configurePersistentStoreCoordinatorForURL:ofType:modelConfiguration:storeOptions:error:"
  ck.instanceProperty @, "managedObjectContext"
  ck.instanceProperty @, "managedObjectModel"
  ck.instanceProperty @, "persistentStoreOptions"
  ck.instanceProperty @, "modelConfiguration"
  persistentStoreType: objc.invokeSelector "persistentStoreTypeForFileType:"

  # Customizing Read and Write Operations
  readAdditionalContent: objc.invokeSelector "readAdditionalContentFromURL:error:"
  additionalContent: objc.invokeSelector "additionalContentForURL:error:"
  writeAdditionalContent: objc.invokeSelector "writeAdditionalContent:toURL:originalContentsURL:error:"

  # Naming the Persistent Store File
  @persistentStoreName: objc.invokeSelector "persistentStoreName"
