# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIReferenceLibraryViewController"
exports.UIReferenceLibraryViewController = class UIReferenceLibraryViewController extends UIViewController
  @register()

  # Creating Reference-Library View Controllers
  @dictionaryHasDefinitionForTerm: objc.invokeSelector "dictionaryHasDefinitionForTerm:"
  initWithTerm: objc.invokeSelector "initWithTerm:"
