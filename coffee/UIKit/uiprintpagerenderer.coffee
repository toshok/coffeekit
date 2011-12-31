# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPrintPageRenderer"
exports.UIPrintPageRenderer = class UIPrintPageRenderer extends foundation.NSObject
  @register()

  # Accessing Information About the Print Job
  numberOfPages: objc.invokeSelector "numberOfPages"
  ck.instanceProperty @, "paperRect"
  ck.instanceProperty @, "printableRect"

  # Specifying Header and Footer Heights
  ck.instanceProperty @, "headerHeight"
  ck.instanceProperty @, "footerHeight"

  # Managing Print Formatters
  addPrintFormatterStartingAtPageAtIndex: objc.invokeSelector "addPrintFormatter:startingAtPageAtIndex:"
  printFormattersForPageAtIndex: objc.invokeSelector "printFormattersForPageAtIndex:"
  ck.instanceProperty @, "printFormatters"

  # Preparing for Drawing
  prepareForDrawingPages: objc.invokeSelector "prepareForDrawingPages:"

  # Drawing a Page
  drawPageAtIndex: objc.invokeSelector "drawPageAtIndex:inRect:"
  drawHeaderForPageAtIndex: objc.invokeSelector "drawHeaderForPageAtIndex:inRect:"
  drawContentForPageAtIndex: objc.invokeSelector "drawContentForPageAtIndex:inRect:"
  drawPrintFormatterForPageAtIndex: objc.invokeSelector "drawPrintFormatter:forPageAtIndex:"
  drawFooterForPageAtIndex: objc.invokeSelector "drawFooterForPageAtIndex:inRect:"
