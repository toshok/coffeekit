#console.log "UIViewController"
class UIViewController extends UIResponder

  constructor: (handle, arg2) ->
    if typeof (handle) == 'string'
      super objc.allocInstance(handle)
      @initWithNibNameAndBundle handle, arg2
    else
      super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Creating a View Controller Using Nib Files
  initWithNibNameAndBundle: objc.invokeSelector "initWithNibName:bundle:"
  ck.addProperty @::, "nibName"
  ck.addProperty @::, "nibBundle"

  # Managing the View
  ck.addProperty @::, "view"
  loadView: objc.invokeSelector "loadView"
  viewDidLoad: objc.invokeSelector "viewDidLoad"
  viewWillUnload: objc.invokeSelector "viewWillUnload"
  viewDidUnload: objc.invokeSelector "viewDidUnload"
  isViewLoaded: objc.invokeSelector "isViewLoaded"
  ck.addProperty @::, "title"
  ck.addProperty @::, "contentSizeForViewInPopover"
  ck.addProperty @::, "modalInPopover"

  # Using a Storyboard
  performSegue: objc.invokeSelector "performSegueWithIdentifier:sender:"
  prepareForSegue: objc.invokeSelector "prepareForSegue:sender:"
  ck.addProperty @::, "storyboard"

  # Responding to View Events
  viewWillAppear: objc.invokeSelector "viewWillAppear:"
  viewDidAppear: objc.invokeSelector "viewDidAppear:"
  viewWillDisappear: objc.invokeSelector "viewWillDisappear:"
  viewDidDisappear: objc.invokeSelector "viewDidDisappear:"

  # Configuring the View’s Layout Behavior
  ck.addProperty @::, "wantsFullScreenLayout"

  # Configuring the View Rotation Settings
  ck.addProperty @::, "interfaceOrientation"
  shouldAutorotateToInterfaceOrientation: objc.invokeSelector "shouldAutorotateToInterfaceOrientation:"
  attemptRotationToDeviceOrientation: objc.invokeSelector "attemptRotationToDeviceOrientation"
  rotatingHeaderView: objc.invokeSelector "rotatingHeaderView"
  rotatingFooterView: objc.invokeSelector "rotatingFooterView"

  # Responding to View Rotation Events
  willRotateToInterfaceOrientation:duration: objc.invokeSelector "willRotateToInterfaceOrientation:duration:"
  willAnimateRotationToInterfaceOrientation: objc.invokeSelector "willAnimateRotationToInterfaceOrientation:duration:"
  didRotateFromInterfaceOrientation: objc.invokeSelector "didRotateFromInterfaceOrientation:"
  didAnimateFirstHalfOfRotationToInterfaceOrientation: objc.invokeSelector "didAnimateFirstHalfOfRotationToInterfaceOrientation:" # Deprecated in iOS 5.0
  willAnimateFirstHalfOfRotationToInterfaceOrientation: objc.invokeSelector "willAnimateFirstHalfOfRotationToInterfaceOrientation:duration:" # Deprecated in iOS 5.0
  willAnimateSecondHalfOfRotationFromInterfaceOrientation: objc.invokeSelector "willAnimateSecondHalfOfRotationFromInterfaceOrientation:duration:" # Deprecated in iOS 5.0

  # Managing Child View Controllers
  ck.addProperty @::, "childViewControllers"
  addChildViewController: objc.invokeSelector "addChildViewController:"
  removeFromParentViewController: objc.invokeSelector "removeFromParentViewController"
  automaticallyForwardAppearanceAndRotationMethodsToChildViewControllers: objc.invokeSelector "automaticallyForwardAppearanceAndRotationMethodsToChildViewControllers"

  # Managing the Layout of Contained View Controllers
  viewDidLayoutSubviews: objc.invokeSelector "viewDidLayoutSubviews"
  viewWillLayoutSubviews: objc.invokeSelector "viewWillLayoutSubviews"
  willMoveToParentViewController: objc.invokeSelector "willMoveToParentViewController:"
  isMovingFromParentViewController: objc.invokeSelector "isMovingFromParentViewController"
  isMovingToParentViewController: objc.invokeSelector "isMovingToParentViewController"
  didMoveToParentViewController: objc.invokeSelector "didMoveToParentViewController:"

  # Initiating Transitions Between Contained View Controllers
  transition: objc.invokeSelector "transitionFromViewController:toViewController:duration:options:animations:completion:"

  # Handling Memory Warnings
  didReceiveMemoryWarning: objc.invokeSelector "didReceiveMemoryWarning"

  # Getting Other Related View Controllers
  ck.addProperty @::, "parentViewController"
  ck.addProperty @::, "searchDisplayController"
  ck.addProperty @::, "splitViewController"
  ck.addProperty @::, "modalViewController"
  ck.addProperty @::, "navigationController"
  ck.addProperty @::, "tabBarController"

  # Presenting View Controllers
  ck.addProperty @::, "definesPresentationContext"
  ck.addProperty @::, "providesPresentationContextTransitionStyle"
  present: objc.invokeSelector "presentViewController:animated:completion:"
  ck.addProperty @::, "presentingViewController"
  ck.addProperty @::, "presentedViewController"
  isBeingPresented: objc.invokeSelector "isBeingPresented"
  dismiss: objc.invokeSelector "dismissViewControllerAnimated:completion:"
  isBeingDismissed: objc.invokeSelector "isBeingDismissed"

  # Configuring a Navigation Interface
  ck.addProperty @::, "navigationItem"
  ck.addProperty @::, "editing", { set: (v) -> setEditing v, false }
  setEditing: objc.invokeSelector "setEditing:animated:"
  editButtonItem: objc.invokeSelector "editButtonItem"
  ck.addProperty @::, "hidesBottomBarWhenPushed"

  # Configuring the Navigation Controller’s Toolbar
  setToolbarItems: objc.invokeSelector "setToolbarItems:animated:"
  ck.addProperty @::, "toolbarItems", { set: (v) -> setToolbarItems v, false }

  # Configuring Tab Bar Items
  ck.addProperty @::, "tabBarItem"

  # Presenting Modal Views
  presentModal: objc.invokeSelector "presentModalViewController:animated:"
  dismissModal: objc.invokeSelector "dismissModalViewControllerAnimated:"
  ck.addProperty @::, "modalTransitionStyle"
  ck.addProperty @::, "modalPresentationStyle"
  disablesAutomaticKeyboardDismissal: objc.invokeSelector "disablesAutomaticKeyboardDismissal"

new ck.RegisterAttribute UIViewController, "UIViewController"
exports.UIViewController = UIViewController
