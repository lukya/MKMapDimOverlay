//
//  ViewController.m
//  MapOverlayDemo
//
//  Created by swapnil luktuke on 01/05/15.
//  Copyright (c) 2015 Swapnil Luktuke. All rights reserved.
//

#import "ViewController.h"
#import "MKMapDimOverlay.h"
#import "MKMapDimOverlayView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addDimOverlay];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)addDimOverlay {
    MKMapDimOverlay *dimOverlay = [[MKMapDimOverlay alloc] initWithMapView:self.mapView];
    [self.mapView addOverlay: dimOverlay];
}

#pragma mark - MKMapViewDelegate

-(MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id<MKOverlay>)overlay {
    if([overlay isMemberOfClass:[MKMapDimOverlay class]]) {
        MKMapDimOverlayView *dimOverlayView = [[MKMapDimOverlayView alloc] initWithOverlay:overlay];
//        dimOverlayView.overlayAlpha = 0.06;
//        dimOverlayView.overlayColor = [UIColor cyanColor];
        return dimOverlayView;
    }
    return nil;
}

@end
