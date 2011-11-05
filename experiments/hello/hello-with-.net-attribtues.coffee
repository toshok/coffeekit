foundation = require './foundation'
appkit = require './appkit'

class MainWindow extends appkit.NSWindow
class MainWindowController extends appkit.NSWindowController

[Register "AppDelegate"]
class HelloAppDelegate extends foundation.NSObject
  [Selector "applicationDidFinishLaunching:"]
  didFinishLaunching: ->
      @windowController = new MainWindowController "MainWindowController", "MainWindow"

      @windowController.window.setFrame {x: 500, y: 500, width: 300, height: 200}, true
      @windowController.window.title = "Hello!"

      @button = new appkit.NSButton().initWithFrame new foundation.NSRect(50, 50, 200, 50)
      @button.buttonType = appkit.NSButtonType.MomentaryPushInButton
      @button.bezelStyle = appkit.NSBezelStyle.RoundedBezelStyle
      @button.title = "Click me for primes"
      @button.clicked = ->
        if !@worker
          i = 0
          @worker = new Worker ("./prime-worker")
          @worker.onmessage = (msg) =>
                                @button.title = "Prime #{i++}: #{msg}"

      @windowController.window.contentView.addSubview (@button)
      @windowController.window.makeKeyAndOrderFront this

appkit.NSApplication.main([])
