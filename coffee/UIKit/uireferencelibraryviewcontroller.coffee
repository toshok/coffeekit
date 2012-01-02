# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIReferenceLibraryViewController"
exports.UIReferenceLibraryViewController = class UIReferenceLibraryViewController extends UIViewController
  # Creating Reference-Library View Controllers
  @dictionaryHasDefinitionForTerm: @nativeSelector "dictionaryHasDefinitionForTerm:"
  initWithTerm:                    @nativeSelector "initWithTerm:"

  @register()
