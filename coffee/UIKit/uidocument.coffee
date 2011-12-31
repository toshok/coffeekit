# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIDocument"
exports.UIDocument = class UIDocument extends foundation.NSObject
  @register()

  # Initializing a Document Object
  initWithFileURL: objc.invokeSelector "initWithFileURL:"

  # Accessing Document Attributes
  ck.instanceProperty @, "fileURL"
  ck.instanceProperty @, "localizedName"
  ck.instanceProperty @, "fileType"
  ck.instanceProperty @, "fileModificationDate"
  ck.instanceProperty @, "documentState"

  # Writing Document Data
  closeWithCompletionHandler: objc.invokeSelector "closeWithCompletionHandler:"
  contents: objc.invokeSelector "contentsForType:error:"
  saveToURL: objc.invokeSelector "saveToURL:forSaveOperation:completionHandler:"
  writeContentsSafelyToURL: objc.invokeSelector "writeContents:andAttributes:safelyToURL:forSaveOperation:error:"
  writeContentsToURL: objc.invokeSelector "writeContents:toURL:forSaveOperation:originalContentsURL:error:"
  savingFileType: objc.invokeSelector "savingFileType"
  fileAttributesToWriteToURL: objc.invokeSelector "fileAttributesToWriteToURL:forSaveOperation:error:"
  fileNameExtensionForType: objc.invokeSelector "fileNameExtensionForType:saveOperation:"

  # Reading Document Data
  openWithCompletionHandler: objc.invokeSelector "openWithCompletionHandler:"
  loadFromContents: objc.invokeSelector "loadFromContents:ofType:error:"
  readFromURL: objc.invokeSelector "readFromURL:error:"

  # Accessing Document Files Asynchronously
  performAsynchronousFileAccessUsingBlock: objc.invokeSelector "performAsynchronousFileAccessUsingBlock:"

  # Reverting a Document
  revertToContentsOfURL: objc.invokeSelector "revertToContentsOfURL:completionHandler:"

  # Disabling and Enabling Editing
  disableEditing: objc.invokeSelector "disableEditing"
  enableEditing: objc.invokeSelector "enableEditing"

  # Tracking Changes and Autosaving
  hasUnsavedChanges: objc.invokeSelector "hasUnsavedChanges"
  updateChangeCount: objc.invokeSelector "updateChangeCount:"
  ck.instanceProperty @, "undoManager"
  changeCountToken: objc.invokeSelector "changeCountTokenForSaveOperation:"
  updateChangeCountWithToken: objc.invokeSelector "updateChangeCountWithToken:forSaveOperation:"
  autosaveWithCompletionHandler: objc.invokeSelector "autosaveWithCompletionHandler:"

  # Resolving Conflicts and Handling Errors
  handleError: objc.invokeSelector "handleError:userInteractionPermitted:"
  finishedHandlingError: objc.invokeSelector "finishedHandlingError:recovered:"
  userInteractionNoLongerPermitted: objc.invokeSelector "userInteractionNoLongerPermittedForError:"
