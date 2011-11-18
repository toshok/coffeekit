# This file is part of coffeekit.  for licensing information, see the LICENSE file

objc.requireFramework "UIKit"

foundation = require "./foundation"
ck = require "./coffeekit"
coreanimation = require "./coreanimation"

exports.UITableViewStyle = UITableViewStyle =
  plain: 0,
  grouped: 1

  
exports.UITableViewCellStyle = UITableViewCellStyle =
   value1: 0,
   value2: 1,
   subtitle: 2


exports.UIButtonType = UIButtonType =
   custom: 0,
   roundedRect: 1,
   detailDisclosure: 2,
   infoLight: 3,
   infoDark: 4,
   contactAdd: 5

exports.UITextAlignment = UITextAlignment =
   left: 0
   center: 1
   right: 2

exports.UIControlState = UIControlState =
   normal               : 0,
   highlighted          : 1 << 0,
   disabled             : 1 << 1,
   selected             : 1 << 2,
   application          : 0x00FF0000,
   reserved             : 0xFF000000


exports.UIBarStyle = UIBarStyle =
   default          : 0,
   black            : 1,
   
   blackOpaque      : 1, # Deprecated
   blackTranslucent : 2  # Deprecated


exports.UIDataDetectorType = UIDataDetectorType =
   phoneNumber   : 1 << 0,
   link          : 1 << 1,
   address       : 1 << 2,
   calendarEvent : 1 << 3,
   none          : 0,
   all           : ~0


exports.UIBarButtonItemStyle = UIBarButtonItemStyle =
   plain: 0,
   bordered: 1,
   done: 2

exports.UIBarButtonSystemItem = UIBarButtonSystemItem =
   done: 0,
   cancel: 1,
   edit: 2,
   save: 3,
   add: 4,
   flexibleSpace: 5,
   fixedSpace: 6,
   compose: 7,
   reply: 8,
   action: 9,
   organize: 10,
   bookmarks: 11,
   search: 12,
   refresh: 13,
   stop: 14,
   camera: 15,
   trash: 16,
   play: 17,
   pause: 18,
   rewind: 19,
   fastForward: 20,
   undo: 21,        # iOS 3.0 and later
   redo: 22,        # iOS 3.0 and later
   pageCurl: 23     # iOS 4.0 and later


exports.UIControlEvent = UIControlEvent =
   TouchDown           : 1 <<  0,
   TouchDownRepeat     : 1 <<  1,
   TouchDragInside     : 1 <<  2,
   TouchDragOutside    : 1 <<  3,
   TouchDragEnter      : 1 <<  4,
   TouchDragExit       : 1 <<  5,
   TouchUpInside       : 1 <<  6,
   TouchUpOutside      : 1 <<  7,
   TouchCancel         : 1 <<  8,
   
   ValueChanged        : 1 << 12,
   
   EditingDidBegin     : 1 << 16,
   EditingChanged      : 1 << 17,
   EditingDidEnd       : 1 << 18,
   EditingDidEndOnExit : 1 << 19,
   
   AllTouchEvents      : 0x00000FFF,
   AllEditingEvents    : 0x000F0000,
   ApplicationReserved : 0x0F000000,
   SystemReserved      : 0xF0000000,
   AllEvents           : 0xFFFFFFFF

exports.UIPopoverArrowDirection = UIPopoverArrowDirection =
   up:       1 << 0,
   down:     1 << 1,
   left:     1 << 2,
   right:    1 << 3,
   any:      (1 << 0) | (1 << 1) | (1 << 2) | (1 << 3),
   unknown: ~0

