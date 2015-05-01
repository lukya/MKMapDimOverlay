Pod::Spec.new do |s|

    s.name              = 'MKMapDimOverlay'
	s.platform			= :ios
    s.version           = '0.0.1'
    s.summary           = 'Description of your project'
    s.homepage          = 'https://github.com/lukya/MKMapDimOverlay'
    s.license           = {
        :type => 'MIT',
        :file => 'LICENSE'
    }
    s.author            = {
        'YOURNAME' => 'swapnilluktuke@gmail.com'
    }
    s.source            = {
        :git => 'https://github.com/lukya/MKMapDimOverlay.git',
        :tag => s.version.to_s 
    }
    s.source_files      = 'MKMapDimOverlay/MKMapDimOverlay/*.{m,h}'
  	s.framework    		= "CoreGraphics", "UIKit", "Foundation", "MapKit"
    s.requires_arc      = true

end