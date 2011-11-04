#console.log "UIReferenceLibraryViewController"
class UIReferenceLibraryViewController extends UIViewController

  # Creating Reference-Library View Controllers
  @dictionaryHasDefinitionForTerm: objc.invokeSelector ("dictionaryHasDefinitionForTerm:")
  initWithTerm: objc.invokeSelector ("initWithTerm:")

new ck.RegisterAttribute UIReferenceLibraryViewController, "UIReferenceLibraryViewController"
exports.UIReferenceLibraryViewController = UIReferenceLibraryViewController
