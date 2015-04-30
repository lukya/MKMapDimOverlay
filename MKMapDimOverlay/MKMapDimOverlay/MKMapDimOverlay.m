//
//  MKMapDimOverlay.m
//  MKMapDimOverlay
//
//  Created by swapnil luktuke on 01/05/15.
//  Copyright (c) 2015 Swapnil Luktuke. All rights reserved.
//

#import "MKMapDimOverlay.h"

@interface MKMapDimOverlay ()

@property (nonatomic) CLLocationCoordinate2D dimOverlayCoordinates;

@end

@implementation MKMapDimOverlay

-(id)initWithMapView:(MKMapView *)mapView {
    self = [super init];
    if(self)
    {
        self.dimOverlayCoordinates = mapView.centerCoordinate;
    }
    return self;
}

-(CLLocationCoordinate2D)coordinate {
    
    return self.dimOverlayCoordinates;
}

/**
 *  Return MKMapRectWorld in this method makes sure entire map view is covered with the dim overlay.
 *
 *  @return boundingMapRect - MKMapRectWorld for our dim overlay
 */
-(MKMapRect)boundingMapRect {
    return MKMapRectWorld;
}

@end
