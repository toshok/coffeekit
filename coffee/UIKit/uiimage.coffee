# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIImage"
exports.UIImage = class UIImage extends foundation.NSObject
  # Cached Image Loading Routines
  @imageNamed: @nativeSelector "imageNamed:"

  # Creating New Images
  @imageWithContentsOfFile:          @nativeSelector "imageWithContentsOfFile:"
  @imageWithData:                    @nativeSelector "imageWithData:"
  @imageWithCGImage:                 @nativeSelector "imageWithCGImage:"
  @imageWithCGImageScaleOrientation: @nativeSelector "imageWithCGImage:scale:orientation:"
  @imageWithCIImage:                 @nativeSelector "imageWithCIImage:"
  @animatedImageNamed:               @nativeSelector "animatedImageNamed:duration:"
  @animatedImageWithImages:          @nativeSelector "animatedImageWithImages:duration:"
  @animatedResizableImageNamed:      @nativeSelector "animatedResizableImageNamed:capInsets:duration:"
  resizableImage:                    @nativeSelector "resizableImageWithCapInsets:"
  stretchableImage:                  @nativeSelector "stretchableImageWithLeftCapWidth:topCapHeight:" # Deprecated in iOS 5.0

  # Initializing Images
  initWithContentsOfFile:          @nativeSelector "initWithContentsOfFile:"
  initWithData:                    @nativeSelector "initWithData:"
  initWithCGImage:                 @nativeSelector "initWithCGImage:"
  initWithCGImageScaleOrientation: @nativeSelector "initWithCGImage:scale:orientation:"
  initWithCIImage:                 @nativeSelector "initWithCIImage:"

  # Image Attributes
  @instanceProperty "imageOrientation"
  @instanceProperty "size"
  @instanceProperty "scale"
  @instanceProperty "CGImage"
  @instanceProperty "CIImage"
  @instanceProperty "images"
  @instanceProperty "duration"
  @instanceProperty "capInsets"
  @instanceProperty "leftCapWidth" # Deprecated in iOS 5.0
  @instanceProperty "topCapHeight" # Deprecated in iOS 5.0

  # Drawing Images
  drawAtPoint:          @nativeSelector "drawAtPoint:"
  drawAtPointWithBlend: @nativeSelector "drawAtPoint:blendMode:alpha:"
  drawInRect:           @nativeSelector "drawInRect:"
  drawInRectWithBlend:  @nativeSelector "drawInRect:blendMode:alpha:"
  drawAsPatternInRect:  @nativeSelector "drawAsPatternInRect:"

  @register()
