# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIViewController"
exports.UIViewController = class UIViewController extends UIResponder
  constructor: (handle, arg2) ->
    if typeof (handle) == 'string'
      super()
      @initWithNibNameAndBundle handle, arg2
    else
      super handle

  # Creating a View Controller Using Nib Files
  initWithNibNameAndBundle: @nativeSelector "initWithNibName:bundle:"
  @instanceProperty "nibName"
  @instanceProperty "nibBundle"

  # Managing the View
  loadView:       @nativeSelector("loadView").returnType(-> ck.sig.Void)
  viewDidLoad:    @nativeSelector "viewDidLoad"
  viewWillUnload: @nativeSelector "viewWillUnload"
  viewDidUnload:  @nativeSelector "viewDidUnload"
  isViewLoaded:   @nativeSelector "isViewLoaded"
  @instanceProperty "view"
  @instanceProperty "title"
  @instanceProperty "contentSizeForViewInPopover"
  @instanceProperty "modalInPopover"

  # Using a Storyboard
  performSegue:     @nativeSelector "performSegueWithIdentifier:sender:"
  prepareForSegue:  @nativeSelector "prepareForSegue:sender:"
  @instanceProperty "storyboard"

  # Responding to View Events
  viewWillAppear:    @nativeSelector "viewWillAppear:"
  viewDidAppear:     @nativeSelector "viewDidAppear:"
  viewWillDisappear: @nativeSelector "viewWillDisappear:"
  viewDidDisappear:  @nativeSelector "viewDidDisappear:"

  # Configuring the View’s Layout Behavior
  @instanceProperty "wantsFullScreenLayout"

  # Configuring the View Rotation Settings
  @instanceProperty "interfaceOrientation"
  shouldAutorotateToInterfaceOrientation: @nativeSelector "shouldAutorotateToInterfaceOrientation:"
  attemptRotationToDeviceOrientation:     @nativeSelector "attemptRotationToDeviceOrientation"
  rotatingHeaderView:                     @nativeSelector "rotatingHeaderView"
  rotatingFooterView:                     @nativeSelector "rotatingFooterView"

  # Responding to View Rotation Events
  willRotateToInterfaceOrientation:duration:               @nativeSelector "willRotateToInterfaceOrientation:duration:"
  willAnimateRotationToInterfaceOrientation:               @nativeSelector "willAnimateRotationToInterfaceOrientation:duration:"
  didRotateFromInterfaceOrientation:                       @nativeSelector "didRotateFromInterfaceOrientation:"
  didAnimateFirstHalfOfRotationToInterfaceOrientation:     @nativeSelector "didAnimateFirstHalfOfRotationToInterfaceOrientation:" # Deprecated in iOS 5.0
  willAnimateFirstHalfOfRotationToInterfaceOrientation:    @nativeSelector "willAnimateFirstHalfOfRotationToInterfaceOrientation:duration:" # Deprecated in iOS 5.0
  willAnimateSecondHalfOfRotationFromInterfaceOrientation: @nativeSelector "willAnimateSecondHalfOfRotationFromInterfaceOrientation:duration:" # Deprecated in iOS 5.0

  # Managing Child View Controllers
  @instanceProperty "childViewControllers"
  addChildViewController:                                                 @nativeSelector "addChildViewController:"
  removeFromParentViewController:                                         @nativeSelector "removeFromParentViewController"
  automaticallyForwardAppearanceAndRotationMethodsToChildViewControllers: @nativeSelector "automaticallyForwardAppearanceAndRotationMethodsToChildViewControllers"

  # Managing the Layout of Contained View Controllers
  viewDidLayoutSubviews:            @nativeSelector "viewDidLayoutSubviews"
  viewWillLayoutSubviews:           @nativeSelector "viewWillLayoutSubviews"
  willMoveToParentViewController:   @nativeSelector "willMoveToParentViewController:"
  isMovingFromParentViewController: @nativeSelector "isMovingFromParentViewController"
  isMovingToParentViewController:   @nativeSelector "isMovingToParentViewController"
  didMoveToParentViewController:    @nativeSelector "didMoveToParentViewController:"

  # Initiating Transitions Between Contained View Controllers
  transition:                       @nativeSelector "transitionFromViewController:toViewController:duration:options:animations:completion:"

  # Handling Memory Warnings
  didReceiveMemoryWarning:          @nativeSelector "didReceiveMemoryWarning"

  # Getting Other Related View Controllers
  @instanceProperty "parentViewController"
  @instanceProperty "searchDisplayController"
  @instanceProperty "splitViewController"
  @instanceProperty "modalViewController"
  @instanceProperty "navigationController"
  @instanceProperty "tabBarController"

  # Presenting View Controllers
  present:          @nativeSelector "presentViewController:animated:completion:"
  isBeingPresented: @nativeSelector "isBeingPresented"
  dismiss:          @nativeSelector "dismissViewControllerAnimated:completion:"
  isBeingDismissed: @nativeSelector "isBeingDismissed"
  @instanceProperty "definesPresentationContext"
  @instanceProperty "providesPresentationContextTransitionStyle"
  @instanceProperty "presentingViewController"
  @instanceProperty "presentedViewController"

  # Configuring a Navigation Interface
  setEditing:     @nativeSelector "setEditing:animated:"
  editButtonItem: @nativeSelector "editButtonItem"
  @instanceProperty "navigationItem"
  @instanceProperty "editing", { set: (v) -> @setEditing v, false }
  @instanceProperty "hidesBottomBarWhenPushed"

  # Configuring the Navigation Controller’s Toolbar
  setToolbarItems: @nativeSelector "setToolbarItems:animated:"
  @instanceProperty "toolbarItems", { set: (v) -> @setToolbarItems v, false }

  # Configuring Tab Bar Items
  @instanceProperty "tabBarItem"

  # Presenting Modal Views
  presentModal:                       @nativeSelector "presentModalViewController:animated:"
  dismissModal:                       @nativeSelector "dismissModalViewControllerAnimated:"
  disablesAutomaticKeyboardDismissal: @nativeSelector "disablesAutomaticKeyboardDismissal"
  @instanceProperty "modalTransitionStyle"
  @instanceProperty "modalPresentationStyle"

  @register()
