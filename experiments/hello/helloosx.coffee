foundation = require './foundation'
appkit = require './appkit'
ck = require './coffeekit'

class MainWindow extends appkit.NSWindow
new ck.RegisterAttribute MainWindow, "MainWindow"

class MainWindowController extends appkit.NSWindowController
new ck.RegisterAttribute MainWindowController, "MainWindowController"

class HelloAppDelegate extends foundation.NSObject
  didFinishLaunching: ->
      @windowController = new MainWindowController "MainWindowController", "MainWindow"

      @windowController.window.setFrame {x: 500, y: 500, width: 300, height: 200}, true
      @windowController.window.title = "Hello from CoffeeKit!"

      @button = new appkit.NSButton().initWithFrame new foundation.NSRect(50, 50, 200, 50)
      @button.buttonType = appkit.NSButtonType.MomentaryPushInButton
      @button.bezelStyle = appkit.NSBezelStyle.RoundedBezelStyle
      @button.title = "Click me for primes"

      @primeCount = 0
      @button.clicked = =>
        if !@worker
          @button.title = "Prime #{@primeCount}:"
          @worker = new Worker ('./prime-worker')
          @worker.onmessage = (msg) =>
            @button.title = "Prime #{++@primeCount}: #{msg}";

      @windowController.window.contentView.addSubview (@button)
      @windowController.window.makeKeyAndOrderFront this
  new ck.SelectorAttribute @::didFinishLaunching, "applicationDidFinishLaunching:"
new ck.RegisterAttribute HelloAppDelegate, "AppDelegate"


appkit.NSApplication.main([])
