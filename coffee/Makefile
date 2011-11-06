TOP=..

COFFEE?=/usr/local/bin/coffee

DEST_DIR=generated

BOUND_FRAMEWORKS= AppKit \
		  CoreAnimation \
		  Foundation \
		  UIKit

EXTRA_COFFEE_FILES= coffeekit.coffee

FRAMEWORK_SOURCES_AppKit= \
	AppKit/nsalert.coffee \
	AppKit/nsanimation.coffee \
	AppKit/nsanimationcontext.coffee \
	AppKit/nsview.coffee \
	AppKit/nscontrol.coffee \
	AppKit/nscontroller.coffee \
	AppKit/nsbutton.coffee \
	AppKit/nswindow.coffee \
	AppKit/nswindowcontroller.coffee \
	AppKit/nsapplication.coffee

FRAMEWORK_SOURCES_CoreAnimation= \
	CoreAnimation/caconstraint.coffee \
	CoreAnimation/caconstraintlayoutmanager.coffee \
	CoreAnimation/carenderer.coffee \
	CoreAnimation/caanimation.coffee \
	CoreAnimation/caanimationgroup.coffee \
	CoreAnimation/cabasicanimation.coffee \
	CoreAnimation/cakeyframeanimation.coffee \
	CoreAnimation/capropertyanimation.coffee \
	CoreAnimation/cadisplaylink.coffee \
	CoreAnimation/caemittercell.coffee \
	CoreAnimation/calayer.coffee \
	CoreAnimation/caeagllayer.coffee \
	CoreAnimation/caemitterlayer.coffee \
	CoreAnimation/cagradientlayer.coffee \
	CoreAnimation/careplicatorlayer.coffee \
	CoreAnimation/cascrolllayer.coffee \
	CoreAnimation/cashapelayer.coffee \
	CoreAnimation/catextlayer.coffee \
	CoreAnimation/catiledlayer.coffee \
	CoreAnimation/catransformlayer.coffee \
	CoreAnimation/camediatimingfunction.coffee \
	CoreAnimation/catransaction.coffee \
	CoreAnimation/catransition.coffee \
	CoreAnimation/cavaluefunction.coffee

FRAMEWORK_SOURCES_UIKit= \
	UIKit/uiwebviewdelegate.coffee \
	UIKit/uiapplicationdelegate.coffee \
	UIKit/uiactionsheetdelegate.coffee \
	UIKit/uiaccelerometerdelegate.coffee \
	UIKit/uialertviewdelegate.coffee \
	UIKit/uiappearance.coffee \
	UIKit/uitextinput.coffee \
	UIKit/uikeyinput.coffee \
	UIKit/uitextinputtraits.coffee \
	UIKit/uiedgeinsets.coffee \
	UIKit/uioffset.coffee \
	UIKit/uisearchdisplaycontroller.coffee \
	UIKit/uiprintpaper.coffee \
	UIKit/uiprintpagerenderer.coffee \
	UIKit/uiprintinteractioncontroller.coffee \
	UIKit/uiprintinfo.coffee \
	UIKit/uipopovercontroller.coffee \
	UIKit/uipasteboard.coffee \
	UIKit/uinib.coffee \
	UIKit/uistoryboard.coffee \
	UIKit/uistoryboardsegue.coffee \
	UIKit/uistoryboardpopoversegue.coffee \
	UIKit/uiprintformatter.coffee \
	UIKit/uiviewprintformatter.coffee \
	UIKit/uisimpletextprintformatter.coffee \
	UIKit/uimarkuptextprintformatter.coffee \
	UIKit/uidevice.coffee \
	UIKit/uidocument.coffee \
	UIKit/uimanageddocument.coffee \
	UIKit/uidocumentinteractioncontroller.coffee \
	UIKit/uievent.coffee \
	UIKit/uitouch.coffee \
	UIKit/uifont.coffee \
	UIKit/uiimage.coffee \
	UIKit/uiscreen.coffee \
	UIKit/uiscreenmode.coffee \
	UIKit/uilocalizedindexcollation.coffee \
	UIKit/uilocalnotification.coffee \
	UIKit/uimenucontroller.coffee \
	UIKit/uimenuitem.coffee \
	UIKit/uiresponder.coffee \
	UIKit/uiview.coffee \
	UIKit/uicanvasview.coffee \
	UIKit/uiwebview.coffee \
	UIKit/uitoolbar.coffee \
	UIKit/uitableviewcell.coffee \
	UIKit/uitabbar.coffee \
	UIKit/uisearchbar.coffee \
	UIKit/uiscrollview.coffee \
	UIKit/uitextview.coffee \
	UIKit/uitableview.coffee \
	UIKit/uiprogressview.coffee \
	UIKit/uipopoverbackgroundview.coffee \
	UIKit/uipickerview.coffee \
	UIKit/uiimageview.coffee \
	UIKit/uilabel.coffee \
	UIKit/uiwindow.coffee \
	UIKit/uiviewcontroller.coffee \
	UIKit/uitableviewcontroller.coffee \
	UIKit/uitabbarcontroller.coffee \
	UIKit/uisplitviewcontroller.coffee \
	UIKit/uireferencelibraryviewcontroller.coffee \
	UIKit/uipageviewcontroller.coffee \
	UIKit/uinavigationbar.coffee \
	UIKit/uinavigationcontroller.coffee \
	UIKit/uivideoeditorcontroller.coffee \
	UIKit/uiimagepickercontroller.coffee \
	UIKit/uicontrol.coffee \
	UIKit/uitextfield.coffee \
	UIKit/uitextinputmode.coffee \
	UIKit/uitextinputstringtokenizer.coffee \
	UIKit/uitextposition.coffee \
	UIKit/uitextrange.coffee \
	UIKit/uiswitch.coffee \
	UIKit/uistepper.coffee \
	UIKit/uislider.coffee \
	UIKit/uisegmentedcontrol.coffee \
	UIKit/uipagecontrol.coffee \
	UIKit/uibaritem.coffee \
	UIKit/uitabbaritem.coffee \
	UIKit/uiacceleration.coffee \
	UIKit/uiaccelerometer.coffee \
	UIKit/uiaccessibilityelement.coffee \
	UIKit/uiactionsheet.coffee \
	UIKit/uiactivityindicatorview.coffee \
	UIKit/uialertview.coffee \
	UIKit/uiapplication.coffee \
	UIKit/uibarbuttonitem.coffee \
	UIKit/uibezierpath.coffee \
	UIKit/uibutton.coffee \
	UIKit/uicolor.coffee \
	UIKit/uidatepicker.coffee \
	UIKit/uigesturerecognizer.coffee \
	UIKit/uitapgesturerecognizer.coffee \
	UIKit/uipinchgesturerecognizer.coffee \
	UIKit/uirotationgesturerecognizer.coffee \
	UIKit/uiswipegesturerecognizer.coffee \
	UIKit/uipangesturerecognizer.coffee \
	UIKit/uilongpressgesturerecognizer.coffee

all::

clean:
	-rm -rf $(DEST_DIR)


### you really shouldn't need to touch any of this stuff..

DEST_EXTRA_COFFEE_FILES=$(EXTRA_COFFEE_FILES:%.coffee=$(DEST_DIR)/%.js)
DEST_EXTRA_JS_FILES=$(EXTRA_JS_FILES:%=$(DEST_DIR)/%)

all:: $(DEST_EXTRA_COFFEE_FILES) $(DEST_EXTRA_JS_FILES)

define Framework
$(eval FRAMEWORK_FILE_$(1) := $(shell echo $1 | tr "[:upper:]" "[:lower:]").coffee)
$(eval FRAMEWORK_JS_FILE_$(1) := $(shell echo $1 | tr "[:upper:]" "[:lower:]").js)

$(eval FRAMEWORK_SOURCES_$(1) ?= $(wildcard $(1)/*.coffee))

$(DEST_DIR)/$(FRAMEWORK_JS_FILE_$(1)): $(FRAMEWORK_FILE_$(1)) $(FRAMEWORK_SOURCES_$(1))
# the extra $(1) here is so that the coffeescript compiler still tries to compile the $(FRAMEWORK_FILE_$(1)).
	$(COFFEE) -c -p -j $(1) $(FRAMEWORK_FILE_$(1)) $(FRAMEWORK_SOURCES_$(1)) > $(DEST_DIR)/$(FRAMEWORK_JS_FILE_$(1))

all:: $(DEST_DIR)/$(FRAMEWORK_JS_FILE_$(1))

work-$(1):
	@mkdir -p $(DEST_DIR)
	$(COFFEE) -c -o $(DEST_DIR)/$(1) $(1)
endef


$(foreach framework,$(BOUND_FRAMEWORKS),$(eval $(call Framework,$(framework))))

$(DEST_DIR)/%.js: %.coffee
	$(COFFEE) -c -o $(DEST_DIR) $<

$(DEST_DIR)/%.js: %.js
	cp $< $@

