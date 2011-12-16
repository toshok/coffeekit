foundation = require './foundation'
glkit = require './glkit'
gles = require './opengles'
ui = require './uikit'
ck = require './coffeekit'

class HelloIOSViewController extends ui.UIViewController
new ck.RegisterAttribute HelloIOSViewController, "HelloIOSViewController"

class GLKCanvasViewController extends glkit.GLKViewController
  constructor: (handle) ->
    super (if handle then handle else objc.allocInstance (@.constructor.name))
    return @initWithNibNameAndBundle null, null

  loadView: ->
    @view = new glkit.GLKCanvasView().initWithFrame ui.UIScreen.mainScreen.bounds
    @view.drawableDepthFormat = glkit.GLKViewDrawableDepthFormat.depth16

  new ck.SelectorAttribute @::loadView, "loadView", "v@:"

new ck.RegisterAttribute GLKCanvasViewController, "GLKCanvasViewController"

class TargetActionProxy1 extends foundation.NSObject
  constructor: (fn) ->
                 super (objc.allocInstance(@.constructor.name))
                 @fn = fn

  proxyAction: (a1) -> @fn(a1)
  new ck.SelectorAttribute @::proxyAction, "action", "v@:@"
new ck.RegisterAttribute TargetActionProxy1, "TargetActionProxy1"


class HelloIOSAppDelegate extends foundation.NSObject
  ck.objcIBOutlet @::, "window", ui.UIWindow
  ck.objcIBOutlet @::, "rootViewController", HelloIOSViewController

  runJ3DDemo: (demoName) ->
    demo = require "./j3d/Hello#{demoName}"

    @glkcontroller = new GLKCanvasViewController
    @glkcontroller.title = "#{demoName}"

    canvas = @glkcontroller.view

    @glkcontroller.delegate =
        update: =>
          if demo.update?
            demo.update()

    canvas.delegate =
      drawInRect: ->
        demo.draw()

    if demo.tap?
      canvas.tapProxy = new TargetActionProxy1 demo.tap
      canvas.addGestureRecognizer new ui.UITapGestureRecognizer().initWithTarget canvas.tapProxy, canvas.tapProxy.proxyAction

    demo.run canvas

    @window.rootViewController.pushViewController @glkcontroller, true



  runWebGLDemo: (demoName) ->
    @glkcontroller = new GLKCanvasViewController
    @glkcontroller.title = "#{demoName}"

    canvas = @glkcontroller.view

    demo = require "./webgl-samples/#{demoName}/sample"

    @glkcontroller.delegate =
        update: =>
          if demo.update?
            demo.update()

    canvas.delegate =
      drawInRect: ->
        demo.draw()

    demo.run canvas

    @window.rootViewController.pushViewController @glkcontroller, true

  j3dDemos: ->
    newcontroller = new HelloIOSViewController "HelloIOSViewController", null
    newcontroller.title = "J3D Demos"

    buttonY = 60
    buttonYDelta = 60
    
    addj3dbutton = (demoName) =>
      button = ui.UIButton.buttonWithType (ui.UIButtonType.roundedRect);
      button.setTitle demoName, ui.UIControlState.normal
      button.frame = new foundation.NSRect 60, buttonY, 200, 50
      button.clicked = => @runJ3DDemo demoName
      newcontroller.view.addSubview button
      buttonY += buttonYDelta

    addj3dbutton "Cube"
    addj3dbutton "Lights"
    addj3dbutton "Scene"
    addj3dbutton "Head"
    addj3dbutton "Cubemap"
    addj3dbutton "Plasma"

    @window.rootViewController.pushViewController newcontroller, true

  mdnDemos: ->
    newcontroller = new HelloIOSViewController "HelloIOSViewController", null
    newcontroller.title = "MDN Demos"

    addmdnbutton = (demo,frame) =>
      button = ui.UIButton.buttonWithType (ui.UIButtonType.roundedRect);
      button.setTitle demo, ui.UIControlState.normal
      button.frame = frame
      button.clicked = => @runWebGLDemo demo
      newcontroller.view.addSubview button

    addmdnbutton "sample2", new foundation.NSRect 60, 50, 200, 50
    addmdnbutton "sample3", new foundation.NSRect 60, 110, 200, 50
    addmdnbutton "sample4", new foundation.NSRect 60, 170, 200, 50
    addmdnbutton "sample5", new foundation.NSRect 60, 230, 200, 50

    @window.rootViewController.pushViewController newcontroller, true

  webglDemos: ->
    viewcontroller = new HelloIOSViewController "HelloIOSViewController", null
    viewcontroller.title = "WebGL Demos"

    @mdnButton = ui.UIButton.buttonWithType (ui.UIButtonType.roundedRect);
    @mdnButton.setTitle "MDN Samples", ui.UIControlState.normal
    @mdnButton.frame = new foundation.NSRect 60, 180, 200, 50
    @mdnButton.clicked = => @mdnDemos()
    viewcontroller.view.addSubview @mdnButton

    @j3dButton = ui.UIButton.buttonWithType (ui.UIButtonType.roundedRect);
    @j3dButton.setTitle "J3D", ui.UIControlState.normal
    @j3dButton.frame = new foundation.NSRect 60, 240, 200, 50
    @j3dButton.clicked = =>  @j3dDemos()
    viewcontroller.view.addSubview @j3dButton

    @window.rootViewController.pushViewController viewcontroller, true

  workerDemo: ->
    newcontroller = new HelloIOSViewController "HelloIOSViewController", null
    newcontroller.title = "Web Workers"

    @b = ui.UIButton.buttonWithType (ui.UIButtonType.roundedRect);
    @b.setTitle "Click to generate primes", ui.UIControlState.normal
    @b.frame = new foundation.NSRect 60, 180, 200, 50

    @primeCount = 0
    @b.clicked = =>
      if !@worker
        @b.title = "Prime #{@primeCount}:"
        @worker = new Worker ('./prime-worker')
        @worker.onmessage = (msg) =>
          @b.setTitle "Prime #{++@primeCount}: #{msg}", ui.UIControlState.normal

    newcontroller.view.addSubview @b
    @window.rootViewController.pushViewController newcontroller, true

  didFinishLaunching: (notification) ->
      @window = new ui.UIWindow().initWithFrame ui.UIScreen.mainScreen.bounds

      viewcontroller = new HelloIOSViewController "HelloIOSViewController", null
      viewcontroller.title = "CoffeeTouch Demos"

      navController = new ui.UINavigationController().initWithRootViewController viewcontroller

      @window.rootViewController = navController
      @rootViewController = navController

      ui.UIButton.appearance().setTitleColor ui.UIColor.redColor, ui.UIControlState.normal

      @workerButton = ui.UIButton.buttonWithType (ui.UIButtonType.roundedRect);
      @workerButton.setTitle "Web Workers", ui.UIControlState.normal
      @workerButton.frame = new foundation.NSRect 60, 180, 200, 50
      @workerButton.clicked = => @workerDemo()
      viewcontroller.view.addSubview @workerButton


      @j3dButton = ui.UIButton.buttonWithType (ui.UIButtonType.roundedRect);
      @j3dButton.setTitle "WebGL", ui.UIControlState.normal
      @j3dButton.frame = new foundation.NSRect 60, 240, 200, 50
      @j3dButton.clicked = =>  @webglDemos()
      viewcontroller.view.addSubview @j3dButton

      @window.makeKeyAndVisible()

      return true
  new ck.SelectorAttribute @::didFinishLaunching, "applicationDidFinishLaunching:"
new ck.RegisterAttribute HelloIOSAppDelegate, "AppDelegate"

ui.UIApplication.main [], "AppDelegate"
