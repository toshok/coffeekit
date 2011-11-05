foundation = require './foundation'
uikit = require './uikit'
ck = require './coffeekit'
#j3d = require './j3d'

class HelloIOSViewController extends uikit.UIViewController
new ck.RegisterAttribute HelloIOSViewController, "HelloIOSViewController"


class HelloIOSAppDelegate extends foundation.NSObject
  ck.objcIBOutlet @::, "window", uikit.UIWindow
  ck.objcIBOutlet @::, "rootViewController", HelloIOSViewController

  j3dDemo: ->
    newcontroller = new HelloIOSViewController "HelloIOSViewController", null
    newcontroller.title = "J3D"

    @button3 = uikit.UIButton.buttonWithType (uikit.UIButtonType.roundedRect);
    @button3.setTitle "Woohoo!", uikit.UIControlState.normal
    @button3.frame = new foundation.NSRect 60, 180, 200, 50
    newcontroller.view.addSubview @button3

    @window.rootViewController.pushViewController newcontroller, true

  workerDemo: ->
    newcontroller = new HelloIOSViewController "HelloIOSViewController", null
    newcontroller.title = "Web Workers"

    @b = uikit.UIButton.buttonWithType (uikit.UIButtonType.roundedRect);
    @b.setTitle "Click to generate primes", uikit.UIControlState.normal
    @b.frame = new foundation.NSRect 60, 180, 200, 50

    @primeCount = 0
    @b.clicked = =>
      if !@worker
        @b.title = "Prime #{@primeCount}:"
        @worker = new Worker ('./prime-worker')
        @worker.onmessage = (msg) =>
          @b.setTitle "Prime #{++@primeCount}: #{msg}", uikit.UIControlState.normal

    newcontroller.view.addSubview @b
    @window.rootViewController.pushViewController newcontroller, true

  didFinishLaunching: (notification) ->
      @window = new uikit.UIWindow().initWithFrame(uikit.UIScreen.mainScreen.bounds)

      viewcontroller = new HelloIOSViewController "HelloIOSViewController", null
      viewcontroller.title = "CoffeeTouch Demos"

      navController = new uikit.UINavigationController().initWithRootViewController viewcontroller

      @window.rootViewController = navController
      @rootViewController = navController

      uikit.UIButton.appearance().setTitleColor uikit.UIColor.redColor, uikit.UIControlState.normal

      @workerButton = uikit.UIButton.buttonWithType (uikit.UIButtonType.roundedRect);
      @workerButton.setTitle "Web Workers", uikit.UIControlState.normal
      @workerButton.frame = new foundation.NSRect 60, 180, 200, 50
      @workerButton.clicked = => @workerDemo()
      viewcontroller.view.addSubview @workerButton


      @j3dButton = uikit.UIButton.buttonWithType (uikit.UIButtonType.roundedRect);
      @j3dButton.setTitle "J3D", uikit.UIControlState.normal
      @j3dButton.frame = new foundation.NSRect 60, 240, 200, 50
      @j3dButton.clicked = =>  @j3dDemo()
      viewcontroller.view.addSubview @j3dButton

      @window.makeKeyAndVisible()

      return true
  new ck.SelectorAttribute @::didFinishLaunching, "applicationDidFinishLaunching:"
new ck.RegisterAttribute HelloIOSAppDelegate, "AppDelegate"

uikit.UIApplication.main([], "AppDelegate")
