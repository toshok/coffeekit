# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIDocument"
exports.UIDocument = class UIDocument extends foundation.NSObject
  # Initializing a Document Object
  initWithFileURL: @nativeSelector "initWithFileURL:"

  # Accessing Document Attributes
  @instanceProperty "fileURL"
  @instanceProperty "localizedName"
  @instanceProperty "fileType"
  @instanceProperty "fileModificationDate"
  @instanceProperty "documentState"

  # Writing Document Data
  closeWithCompletionHandler: @nativeSelector "closeWithCompletionHandler:"
  contents:                   @nativeSelector "contentsForType:error:"
  saveToURL:                  @nativeSelector "saveToURL:forSaveOperation:completionHandler:"
  writeContentsSafelyToURL:   @nativeSelector "writeContents:andAttributes:safelyToURL:forSaveOperation:error:"
  writeContentsToURL:         @nativeSelector "writeContents:toURL:forSaveOperation:originalContentsURL:error:"
  savingFileType:             @nativeSelector "savingFileType"
  fileAttributesToWriteToURL: @nativeSelector "fileAttributesToWriteToURL:forSaveOperation:error:"
  fileNameExtensionForType:   @nativeSelector "fileNameExtensionForType:saveOperation:"

  # Reading Document Data
  openWithCompletionHandler: @nativeSelector "openWithCompletionHandler:"
  loadFromContents:          @nativeSelector "loadFromContents:ofType:error:"
  readFromURL:               @nativeSelector "readFromURL:error:"

  # Accessing Document Files Asynchronously
  performAsynchronousFileAccessUsingBlock: @nativeSelector "performAsynchronousFileAccessUsingBlock:"

  # Reverting a Document
  revertToContentsOfURL:     @nativeSelector "revertToContentsOfURL:completionHandler:"

  # Disabling and Enabling Editing
  disableEditing:            @nativeSelector "disableEditing"
  enableEditing:             @nativeSelector "enableEditing"

  # Tracking Changes and Autosaving
  @instanceProperty              "undoManager"
  hasUnsavedChanges:             @nativeSelector "hasUnsavedChanges"
  updateChangeCount:             @nativeSelector "updateChangeCount:"
  changeCountToken:              @nativeSelector "changeCountTokenForSaveOperation:"
  updateChangeCountWithToken:    @nativeSelector "updateChangeCountWithToken:forSaveOperation:"
  autosaveWithCompletionHandler: @nativeSelector "autosaveWithCompletionHandler:"

  # Resolving Conflicts and Handling Errors
  handleError:                      @nativeSelector "handleError:userInteractionPermitted:"
  finishedHandlingError:            @nativeSelector "finishedHandlingError:recovered:"
  userInteractionNoLongerPermitted: @nativeSelector "userInteractionNoLongerPermittedForError:"

  @register()
