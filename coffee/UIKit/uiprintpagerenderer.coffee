# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPrintPageRenderer"
exports.UIPrintPageRenderer = class UIPrintPageRenderer extends foundation.NSObject
  # Accessing Information About the Print Job
  numberOfPages:    @nativeSelector "numberOfPages"
  @instanceProperty "paperRect"
  @instanceProperty "printableRect"

  # Specifying Header and Footer Heights
  @instanceProperty "headerHeight"
  @instanceProperty "footerHeight"

  # Managing Print Formatters
  addPrintFormatterStartingAtPageAtIndex: @nativeSelector "addPrintFormatter:startingAtPageAtIndex:"
  printFormattersForPageAtIndex:          @nativeSelector "printFormattersForPageAtIndex:"
  @instanceProperty "printFormatters"

  # Preparing for Drawing
  prepareForDrawingPages:           @nativeSelector "prepareForDrawingPages:"

  # Drawing a Page
  drawPageAtIndex:                  @nativeSelector "drawPageAtIndex:inRect:"
  drawHeaderForPageAtIndex:         @nativeSelector "drawHeaderForPageAtIndex:inRect:"
  drawContentForPageAtIndex:        @nativeSelector "drawContentForPageAtIndex:inRect:"
  drawPrintFormatterForPageAtIndex: @nativeSelector "drawPrintFormatter:forPageAtIndex:"
  drawFooterForPageAtIndex:         @nativeSelector "drawFooterForPageAtIndex:inRect:"

  @register()
