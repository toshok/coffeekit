foundation = require './foundation'
glkit = require './glkit'
gles = require './opengles'
ui = require './uikit'
ck = require './coffeekit'

class HelloIOSViewController extends ui.UIViewController
new ck.RegisterAttribute HelloIOSViewController, "HelloIOSViewController"


class GLKCanvasViewController extends glkit.GLKViewController
  constructor: (handle) ->
    super (if handle then handle else objc.allocInstance(@.constructor.name))
    if not handle?
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

  uiAlertOnException: (f) ->
    try
      f()
      true
    catch e
      alertView = new ui.UIAlertView().init "Exception in demo script", e, null, "Ok", null
      alertView.show()
      false
  
  loadDemoIntoController: (controller, demo) ->
    canvas = controller.view

    controller.delegate =
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
      


  runGLDemo: (demoName, demoPath) -> 
    demo = null
    
    demoValid = @uiAlertOnException -> demo = require demoPath

    viewSource = (item) =>
       if @sourceViewPopover?
           @sourceViewPopover.dismissPopover true
           @sourceViewPopover = null
       else
           sourceViewController = new HelloIOSViewController "HelloIOSViewController", null

           saveAndClose = =>
               @sourceViewPopover.dismissPopover true
               @sourceViewPopover = null
               console.log "exporting"
               exportScript demoPath, sourceView.text
               demoValid = @uiAlertOnException -> demo = require demoPath
               if demoValid
                 @loadDemoIntoController @glkcontroller, demo
               

           toolbar = new ui.UIToolbar().initWithFrame new foundation.NSRect(0, 0, ui.UIScreen.mainScreen.bounds.width, 30)
           saveButton = new ui.UIBarButtonItem().initWithClickHandler "Save and Close", ui.UIBarButtonItemStyle.bordered, (item) => saveAndClose()
           toolbar.items = [
               saveButton
           ]
           
           saveButton.enabled = false
           
           sourceView = new ui.UITextView().initWithFrame new foundation.NSRect(0, 30, ui.UIScreen.mainScreen.bounds.width, ui.UIScreen.mainScreen.bounds.height)
           sourceView.text = contentsOfFile "#{demoPath}.js"
           sourceView.delegate =
             didChangeText: ->
               saveButton.enabled = true

           sourceViewController.view.addSubview toolbar           
           sourceViewController.view.addSubview sourceView
           sourceViewController.view.layoutIfNeeded()
           
           @sourceViewPopover = new ui.UIPopoverController().initWithContentViewController sourceViewController
           @sourceViewPopover.presentPopoverFromBarButtonItem item, ui.UIPopoverArrowDirection.up, true

    
    @glkcontroller = new GLKCanvasViewController
    @glkcontroller.title = "#{demoName}"
    @glkcontroller.toolbarItems = [
        new ui.UIBarButtonItem().initWithClickHandler "View Source", ui.UIBarButtonItemStyle.bordered, (item) -> viewSource(item)        
    ]

    if demoValid
      @loadDemoIntoController @glkcontroller, demo

    @window.rootViewController.pushViewController @glkcontroller, true

    
  runJ3DDemo: (demoName) ->
    @runGLDemo demoName, "./j3d/Hello#{demoName}"


  runMDNDemo: (demoName) ->
    @runGLDemo demoName, "./webgl-samples/#{demoName}/sample"


  workerDemo: ->
    newcontroller = new HelloIOSViewController "HelloIOSViewController", null
    newcontroller.title = "Web Workers"

    screenBounds = ui.UIScreen.mainScreen.bounds
    
    @primeButton = ui.UIButton.buttonWithType (ui.UIButtonType.roundedRect);
    @primeButton.setTitle "Click to generate primes", ui.UIControlState.normal
    
    @primeButton.frame = new foundation.NSRect (screenBounds.width/2-100), (screenBounds.height/2 - 50), 200, 50

    @primeTextField = new ui.UITextField().initWithFrame new foundation.NSRect 0, screenBounds.height/2+50, screenBounds.width, 50
    @primeTextField.textAlignment = ui.UITextAlignment.center
    
    @primeCount = 0
    @primeButton.clicked = =>
      if @worker
        @primeButton.setTitle "Click to generate primes", ui.UIControlState.normal
        @worker.close()
        @worker = null;
        @primeTextField.text = ""
      else
        @primeButton.setTitle "Click to stop", ui.UIControlState.normal
        @worker = new Worker ('./prime-worker')
        @worker.onmessage = (msg) =>
          @primeTextField.text = "Prime #{++@primeCount}: #{msg}"
          return
      return
      
    newcontroller.view.addSubview @primeButton
    newcontroller.view.addSubview @primeTextField
    
    @window.rootViewController.pushViewController newcontroller, true

                  
  
  didFinishLaunching: (notification) ->
    @window = new ui.UIWindow().initWithFrame ui.UIScreen.mainScreen.bounds

    tableviewcontroller = new ui.UITableViewController().initWithStyle ui.UITableViewStyle.plain
    tableviewcontroller.title = "CoffeeKit Demos"
  
    @tableData = [
        {title: "Web Workers", rows: [
            { title: "Primes in a button", clicked: => @workerDemo() }
        ]}
        {title: "WebGL", rows: [
            { title: "MDN sample 2",        clicked: => @runMDNDemo "sample2" }
            { title: "MDN sample 3",        clicked: => @runMDNDemo "sample3" }
            { title: "MDN sample 4",        clicked: => @runMDNDemo "sample4" }
            { title: "MDN sample 5",        clicked: => @runMDNDemo "sample5" }
            { title: "J3D Engine: Cube",    clicked: => @runJ3DDemo "Cube" }
            { title: "J3D Engine: Lights",  clicked: => @runJ3DDemo "Lights" }
            { title: "J3D Engine: Scene",   clicked: => @runJ3DDemo "Scene" }
            { title: "J3D Engine: Head",    clicked: => @runJ3DDemo "Head" }
            { title: "J3D Engine: Cubemap", clicked: => @runJ3DDemo "Cubemap" }
            { title: "J3D Engine: Plasma",  clicked: => @runJ3DDemo "Plasma" }
        ]}
    ]

    pathToItem = (arr, pos, path) =>
        item = arr[path.indexAtPosition pos]
        if pos is (path.length-1) then item else pathToItem item.rows, pos+1, path

    tableviewcontroller.tableView.delegate =
        didSelectRow: (tv, path) =>
            pathToItem(@tableData, 0, path).clicked()

    tableviewcontroller.tableView.dataSource =
        cellForRow: (tv, path) =>
            cell = tv.dequeueReusableCellWithIdentifier("reuse") or new ui.UITableViewCell().initWithStyle ui.UITableViewCellStyle.value1, "reuse"
            cell.textLabel.text = pathToItem(@tableData, 0, path).title
            cell
        
        numberOfSections: => @tableData.length
        
        numberOfRowsInSection: (tv, section) => @tableData[section].rows.length
        
        titleForHeaderInSection: (tv, section) => @tableData[section].title


    navController = new ui.UINavigationController().initWithRootViewController tableviewcontroller
    navController.toolbarHidden = ui.UIDevice.currentDevice.userInterfaceIdiom != ui.UIUserInterfaceIdiom.pad
    @window.rootViewController = navController
    @rootViewController = navController

    @window.makeKeyAndVisible()

    return true
  new ck.SelectorAttribute @::didFinishLaunching, "applicationDidFinishLaunching:"
new ck.RegisterAttribute HelloIOSAppDelegate, "AppDelegate"

ui.UIApplication.main([], "AppDelegate")
