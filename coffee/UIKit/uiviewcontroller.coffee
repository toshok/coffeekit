# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIViewController"
exports.UIViewController = class UIViewController extends UIResponder
  @register()

  constructor: (handle, arg2) ->
    if typeof (handle) == 'string'
      super()
      @initWithNibNameAndBundle handle, arg2
    else
      super handle

  # Creating a View Controller Using Nib Files
  initWithNibNameAndBundle: objc.invokeSelector "initWithNibName:bundle:"
  ck.instanceProperty @, "nibName"
  ck.instanceProperty @, "nibBundle"

  # Managing the View
  ck.instanceProperty @, "view"
  loadView: objc.invokeSelector "loadView"
  viewDidLoad: objc.invokeSelector "viewDidLoad"
  viewWillUnload: objc.invokeSelector "viewWillUnload"
  viewDidUnload: objc.invokeSelector "viewDidUnload"
  isViewLoaded: objc.invokeSelector "isViewLoaded"
  ck.instanceProperty @, "title"
  ck.instanceProperty @, "contentSizeForViewInPopover"
  ck.instanceProperty @, "modalInPopover"

  # Using a Storyboard
  performSegue: objc.invokeSelector "performSegueWithIdentifier:sender:"
  prepareForSegue: objc.invokeSelector "prepareForSegue:sender:"
  ck.instanceProperty @, "storyboard"

  # Responding to View Events
  viewWillAppear: objc.invokeSelector "viewWillAppear:"
  viewDidAppear: objc.invokeSelector "viewDidAppear:"
  viewWillDisappear: objc.invokeSelector "viewWillDisappear:"
  viewDidDisappear: objc.invokeSelector "viewDidDisappear:"

  # Configuring the View’s Layout Behavior
  ck.instanceProperty @, "wantsFullScreenLayout"

  # Configuring the View Rotation Settings
  ck.instanceProperty @, "interfaceOrientation"
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
  ck.instanceProperty @, "childViewControllers"
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
  ck.instanceProperty @, "parentViewController"
  ck.instanceProperty @, "searchDisplayController"
  ck.instanceProperty @, "splitViewController"
  ck.instanceProperty @, "modalViewController"
  ck.instanceProperty @, "navigationController"
  ck.instanceProperty @, "tabBarController"

  # Presenting View Controllers
  ck.instanceProperty @, "definesPresentationContext"
  ck.instanceProperty @, "providesPresentationContextTransitionStyle"
  present: objc.invokeSelector "presentViewController:animated:completion:"
  ck.instanceProperty @, "presentingViewController"
  ck.instanceProperty @, "presentedViewController"
  isBeingPresented: objc.invokeSelector "isBeingPresented"
  dismiss: objc.invokeSelector "dismissViewControllerAnimated:completion:"
  isBeingDismissed: objc.invokeSelector "isBeingDismissed"

  # Configuring a Navigation Interface
  ck.instanceProperty @, "navigationItem"
  ck.instanceProperty @, "editing", { set: (v) -> @setEditing v, false }
  setEditing: objc.invokeSelector "setEditing:animated:"
  editButtonItem: objc.invokeSelector "editButtonItem"
  ck.instanceProperty @, "hidesBottomBarWhenPushed"

  # Configuring the Navigation Controller’s Toolbar
  setToolbarItems: objc.invokeSelector "setToolbarItems:animated:"
  ck.instanceProperty @, "toolbarItems", { set: (v) -> @setToolbarItems v, false }

  # Configuring Tab Bar Items
  ck.instanceProperty @, "tabBarItem"

  # Presenting Modal Views
  presentModal: objc.invokeSelector "presentModalViewController:animated:"
  dismissModal: objc.invokeSelector "dismissModalViewControllerAnimated:"
  ck.instanceProperty @, "modalTransitionStyle"
  ck.instanceProperty @, "modalPresentationStyle"
  disablesAutomaticKeyboardDismissal: objc.invokeSelector "disablesAutomaticKeyboardDismissal"

