# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPrintPageRenderer"
class UIPrintPageRenderer extends foundation.NSObject

  # Accessing Information About the Print Job
  numberOfPages: objc.invokeSelector "numberOfPages"
  ck.addProperty @::, "paperRect"
  ck.addProperty @::, "printableRect"

  # Specifying Header and Footer Heights
  ck.addProperty @::, "headerHeight"
  ck.addProperty @::, "footerHeight"

  # Managing Print Formatters
  addPrintFormatterStartingAtPageAtIndex: objc.invokeSelector "addPrintFormatter:startingAtPageAtIndex:"
  printFormattersForPageAtIndex: objc.invokeSelector "printFormattersForPageAtIndex:"
  ck.addProperty @::, "printFormatters"

  # Preparing for Drawing
  prepareForDrawingPages: objc.invokeSelector "prepareForDrawingPages:"

  # Drawing a Page
  drawPageAtIndex: objc.invokeSelector "drawPageAtIndex:inRect:"
  drawHeaderForPageAtIndex: objc.invokeSelector "drawHeaderForPageAtIndex:inRect:"
  drawContentForPageAtIndex: objc.invokeSelector "drawContentForPageAtIndex:inRect:"
  drawPrintFormatterForPageAtIndex: objc.invokeSelector "drawPrintFormatter:forPageAtIndex:"
  drawFooterForPageAtIndex: objc.invokeSelector "drawFooterForPageAtIndex:inRect:"

new ck.RegisterAttribute UIPrintPageRenderer, "UIPrintPageRenderer"
exports.UIPrintPageRenderer = UIPrintPageRenderer
