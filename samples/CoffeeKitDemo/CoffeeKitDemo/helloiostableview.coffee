foundation = require './foundation'
glk = require './glkit'
gles = require './opengles'
ui = require './uikit'
ck = require './coffeekit'

class HelloIOSViewController extends ui.UIViewController
  @register()


class GLKCanvasViewController extends glk.GLKViewController
  constructor: (handle) ->
    super handle
    if not handle?
      return @initWithNibNameAndBundle null, null
    @handle

  loadView: @override ->
    @view = new glk.GLKCanvasView().initWithFrame ui.UIScreen.mainScreen.bounds
    @view.drawableDepthFormat = glk.GLKViewDrawableDepthFormat.depth16

  @register()

class TargetActionProxy1 extends foundation.NSObject
  constructor: (fn) ->
                 super()
                 @fn = fn

  proxyAction: @nativeSelector("action").
                    returnType(-> ck.sig.Void).
                    paramTypes(-> [foundation.NSObject]).
                          impl (a1) -> @fn a1

  @register()


class HelloIOSAppDelegate extends foundation.NSObject
  ck.objcIBOutlet @::, "window", ui.UIWindow
  ck.objcIBOutlet @::, "rootViewController", HelloIOSViewController

  uiAlertOnException: (f) ->
    try
      f()
      yes
    catch e
      alertView = new ui.UIAlertView().init "Exception in demo script", e, null, "Ok", null
      alertView.show()
      no
  
  loadDemoIntoController: (controller, demo) ->
    canvas = controller.view

    controller.delegate =
        update: -> demo.update?()

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
        @sourceViewPopover.dismissPopover yes
        @sourceViewPopover = null
      else
        sourceViewController = new HelloIOSViewController "HelloIOSViewController", null

        saveAndClose = =>
          @sourceViewPopover.dismissPopover yes
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
           
        saveButton.enabled = no
           
        sourceView = new ui.UITextView().initWithFrame new foundation.NSRect(0, 30, ui.UIScreen.mainScreen.bounds.width, ui.UIScreen.mainScreen.bounds.height)
        sourceView.text = contentsOfFile "#{demoPath}.js"
        sourceView.delegate =
          didChangeText: ->
            saveButton.enabled = yes

        sourceViewController.view.addSubview toolbar           
        sourceViewController.view.addSubview sourceView
        sourceViewController.view.layoutIfNeeded()
           
        @sourceViewPopover = new ui.UIPopoverController().initWithContentViewController sourceViewController
        @sourceViewPopover.presentPopoverFromBarButtonItem item, ui.UIPopoverArrowDirection.up, yes

    
    @glkcontroller = new GLKCanvasViewController
    @glkcontroller.title = "#{demoName}"
    @glkcontroller.toolbarItems = [
        new ui.UIBarButtonItem().initWithClickHandler "View Source", ui.UIBarButtonItemStyle.bordered, (item) -> viewSource(item)        
    ]

    if demoValid
      @loadDemoIntoController @glkcontroller, demo

    @window.rootViewController.pushViewController @glkcontroller, yes

    
  runJ3DDemo: (demoName) ->
    @runGLDemo demoName, "./j3d/Hello#{demoName}"


  runMDNDemo: (demoName) ->
    @runGLDemo demoName, "./webgl-samples/#{demoName}/sample"


  workerDemo: ->
    newcontroller = new HelloIOSViewController "HelloIOSViewController", null
    newcontroller.title = "Web Workers"

    @primeButton = ui.UIButton.buttonWithType (ui.UIButtonType.roundedRect);
    @primeButton.setTitle "Click to generate primes", ui.UIControlState.normal
    
    screenBounds = ui.UIScreen.mainScreen.bounds
    
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
      
    newcontroller.view.addSubview @primeButton
    newcontroller.view.addSubview @primeTextField
    
    @window.rootViewController.pushViewController newcontroller, yes

  xhrDemo: ->
    newcontroller = new HelloIOSViewController "HelloIOSViewController", null
    newcontroller.title = "XmlHttpRequest"

    screenBounds = ui.UIScreen.mainScreen.bounds
    
    @xhrButton = ui.UIButton.buttonWithType (ui.UIButtonType.roundedRect);
    @xhrButton.setTitle "Click to fetch home.mcom.com", ui.UIControlState.normal
    
    @xhrButton.frame = new foundation.NSRect (screenBounds.width/2-100), (screenBounds.height/2 - 50), 250, 50

    @xhrButton.clicked = =>
      xhr = new XmlHttpRequest
      xhr.open "GET", "http://home.mcom.com/"
      xhr.readystatechanged = ->
        if xhr.readyState is 4
          console.log "response = #{xhr.responseText}"
      xhr.send()
      
    newcontroller.view.addSubview @xhrButton
    newcontroller.view.addSubview @xhrTextField
    
    @window.rootViewController.pushViewController newcontroller, yes

                  
  
  didFinishLaunching: @override ->
    @window = new ui.UIWindow().initWithFrame ui.UIScreen.mainScreen.bounds

    tableviewcontroller = new ui.UITableViewController().initWithStyle ui.UITableViewStyle.plain
    tableviewcontroller.title = "CoffeeKit Demos"
  
    @tableData = [
        {title: "Web Workers", rows: [
            { title: "Primes in a button", clicked: => @workerDemo() }
        ]}
        {title: "XmlHttpRequest", rows: [
            { title: "Simple fetch", clicked: => @xhrDemo() }
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

    yes

  @conformsToProtocol ui.UIApplicationDelegate

  @register("AppDelegate")

