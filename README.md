# MKMapDimOverlay

Simple dim overlay on iOS MKMapView, covering entire map using MKOverlay and MKOverlayView with customisable colour and alpha values.

## Usage

Initialize and add `MKMapDimOverlay` to your MKMapView object.

```objective-c
- (void)addDimOverlay {
	MKMapDimOverlay *dimOverlay = [[MKMapDimOverlay alloc] initWithMapView:self.mapView];
	[self.mapView addOverlay: dimOverlay];
}
```

And in map view's `mapView: viewForOverlay:` delegate method, instantiate and return `MKMapDimOverlayView`. You can customize overlay color and opacity.

```objective-c
-(MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id<MKOverlay>)overlay {
	if([overlay isMemberOfClass:[MKMapDimOverlay class]]) {
		MKMapDimOverlayView *dimOverlayView = [[MKMapDimOverlayView alloc] initWithOverlay:overlay];
		dimOverlayView.overlayAlpha = 0.3;
		dimOverlayView.overlayColor = [UIColor magentaColor];
		return dimOverlayView;
	}
	return nil;
}
```

## Adding MKMapDimOverlay to your project

### CocoaPods

[CocoaPods](http://cocoapods.org) is the recommended way to add MKMapDimOverlay to your project.

1. Add a pod entry for MBProgressHUD to your Podfile `pod 'MKMapDimOverlay'`
2. Install the pod(s) by running `pod install`.
3. Include MKMapDimOverlay wherever you need it with `#import "MKMapDimOverlay.h"` and `#import "MKMapDimOverlayView.h"`.

### Source files

Alternatively you can directly add the `MKMapDimOverlay.h`, `MKMapDimOverlay.m`, `MKMapDimOverlayView.h` and `MKMapDimOverlayView.m` source files to your project.

1. Download the [latest code version](https://github.com/lukya/MKMapDimOverlay/archive/master.zip) or add the repository as a git submodule to your git-tracked project. 
2. Open your project in Xcode, then drag and drop `MKMapDimOverlay.h`, `MKMapDimOverlay.m`, `MKMapDimOverlayView.h` and `MKMapDimOverlayView.m` onto your project (use the "Product Navigator view"). Make sure to select Copy items when asked if you extracted the code archive outside of your project. 
3. Include MKMapDimOverlay wherever you need it with `#import "MKMapDimOverlay.h"` and `#import "MKMapDimOverlayView.h"`.

### Static library

You can also add MKMapDimOverlay as a static library to your project or workspace. 

1. Download the [latest code version](https://github.com/lukya/MKMapDimOverlay/archive/master.zip) or add the repository as a git submodule to your git-tracked project. 
2. Open your project in Xcode, then drag and drop `MKMapDimOverlay.xcodeproj` onto your project or workspace (use the "Product Navigator view"). 
3. Select your target and go to the Build phases tab. In the Link Binary With Libraries section select the add button. On the sheet find and add `libMKMapDimOverlay.a`. You might also need to add `MKMapDimOverlay` to the Target Dependencies list. 
3. Include MKMapDimOverlay wherever you need it with `#import "MKMapDimOverlay.h"` and `#import "MKMapDimOverlayView.h"`.


## Screenshots
### No Overlay
![No Overlay](https://dl.dropboxusercontent.com/u/22816811/MKMapDimOverlay/Map_NoOverlay.png)

### Default Overlay (Color : Black | Opacity 0.2)
![Default Overlay (Color : Black | Opacity 0.2)](https://dl.dropboxusercontent.com/u/22816811/MKMapDimOverlay/Map_DefaultOverlay.png)

### Custom Overlay (Color : Magenta | Opacity 0.3)
![Custom Overlay (Color : Magenta | Opacity 0.3)](https://dl.dropboxusercontent.com/u/22816811/MKMapDimOverlay/Map_OverlayCustomColor.png)


## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE). 

## Change-log


