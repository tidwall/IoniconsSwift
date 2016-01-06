Pod::Spec.new do |s|
  s.name                  = 'IoniconsSwift'
  s.version               = '2.1.1'
  s.summary               = 'Ionicons for Swift and iOS'
  s.homepage              = 'https://github.com/tidwall/IoniconsSwift'
  s.license               = { :type => "Attribution License", :file => "LICENSE" }
  s.source                = { :git => 'https://github.com/tidwall/IoniconsSwift.git', :tag => 'v2.1.1' }
  s.authors               = { 'Josh Baker' => 'joshbaker77@gmail.com' }
  s.social_media_url      = "https://twitter.com/tidwall"
  s.ios.platform          = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.ios.framework         = 'UIKit'
  s.source_files          = 'IoniconsSwift/*.swift'
  s.resources             = ['IoniconsSwift/*.ttf']
  s.requires_arc          = true

end