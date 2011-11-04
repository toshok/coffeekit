#console.log "UIMenuItem"
class UIMenuItem extends foundation.NSObject

  # Creating a Menu Item
  initWithTitle: objc.invokeSelector ("initWithTitle:action:")

  # Accessing Menu-Item Attributes
  ck.addProperty @::, "title"
  ck.addProperty @::, "action"

new ck.RegisterAttribute UIMenuItem, "UIMenuItem"
exports.UIMenuItem = UIMenuItem
