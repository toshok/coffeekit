# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIImage"
exports.UIImage = class UIImage extends foundation.NSObject
  @register()

  # Cached Image Loading Routines
  @imageNamed: objc.invokeSelector "imageNamed:"

  # Creating New Images
  @imageWithContentsOfFile: objc.invokeSelector "imageWithContentsOfFile:"
  @imageWithData: objc.invokeSelector "imageWithData:"
  @imageWithCGImage: objc.invokeSelector "imageWithCGImage:"
  @imageWithCGImageScaleOrientation: objc.invokeSelector "imageWithCGImage:scale:orientation:"
  @imageWithCIImage: objc.invokeSelector "imageWithCIImage:"
  @animatedImageNamed: objc.invokeSelector "animatedImageNamed:duration:"
  @animatedImageWithImages: objc.invokeSelector "animatedImageWithImages:duration:"
  @animatedResizableImageNamed: objc.invokeSelector "animatedResizableImageNamed:capInsets:duration:"
  resizableImage: objc.invokeSelector "resizableImageWithCapInsets:"
  stretchableImage: objc.invokeSelector "stretchableImageWithLeftCapWidth:topCapHeight:" # Deprecated in iOS 5.0

  # Initializing Images
  initWithContentsOfFile: objc.invokeSelector "initWithContentsOfFile:"
  initWithData: objc.invokeSelector "initWithData:"
  initWithCGImage: objc.invokeSelector "initWithCGImage:"
  initWithCGImageScaleOrientation: objc.invokeSelector "initWithCGImage:scale:orientation:"
  initWithCIImage: objc.invokeSelector "initWithCIImage:"

  # Image Attributes
  ck.instanceProperty @, "imageOrientation"
  ck.instanceProperty @, "size"
  ck.instanceProperty @, "scale"
  ck.instanceProperty @, "CGImage"
  ck.instanceProperty @, "CIImage"
  ck.instanceProperty @, "images"
  ck.instanceProperty @, "duration"
  ck.instanceProperty @, "capInsets"
  ck.instanceProperty @, "leftCapWidth" # Deprecated in iOS 5.0
  ck.instanceProperty @, "topCapHeight" # Deprecated in iOS 5.0

  # Drawing Images
  drawAtPoint: objc.invokeSelector "drawAtPoint:"
  drawAtPointWithBlend: objc.invokeSelector "drawAtPoint:blendMode:alpha:"
  drawInRect: objc.invokeSelector "drawInRect:"
  drawInRectWithBlend: objc.invokeSelector "drawInRect:blendMode:alpha:"
  drawAsPatternInRect: objc.invokeSelector "drawAsPatternInRect:"
