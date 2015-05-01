//
//  MKMapDimOverlayView.m
//  MKMapDimOverlay
//
//  Created by swapnil luktuke on 01/05/15.
//  Copyright (c) 2015 Swapnil Luktuke. All rights reserved.
//

#import "MKMapDimOverlayView.h"

@implementation MKMapDimOverlayView

- (instancetype)initWithOverlay:(id <MKOverlay>)overlay {
    self = [super initWithOverlay:overlay];
    if (self != nil) {
        self.overlayAlpha = 0.2;
        self.overlayColor = [UIColor blackColor];
    }
    return self;
}

- (BOOL)canDrawMapRect:(MKMapRect)mapRect
             zoomScale:(MKZoomScale)zoomScale {
    return true;
}

- (void)drawMapRect:(MKMapRect)mapRect
          zoomScale:(MKZoomScale)zoomScale
          inContext:(CGContextRef)ctx {
    CGContextSetAlpha(ctx, self.overlayAlpha);
    CGContextSetFillColorWithColor(ctx, self.overlayColor.CGColor);
    CGContextFillRect(ctx, [self rectForMapRect:MKMapRectWorld]);
}

@end
