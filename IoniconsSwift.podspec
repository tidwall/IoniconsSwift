Pod::Spec.new do |s|
  s.name                  = "IoniconsSwift"
  s.version               = "2.1.4"
  s.summary               = "Ionicons for Swift and iOS"
  s.homepage              = "https://github.com/tidwall/IoniconsSwift"
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.author                = { "Josh Baker" => "joshbaker77@gmail.com" }
  s.social_media_url      = "http://twitter.com/tidwall"
  s.platform              = :ios, "8.0"
  s.source                = { :git => "https://github.com/tidwall/IoniconsSwift.git", :tag => "#{s.version}" }
  s.source_files          = "IoniconsSwift/*.swift"
  s.resources             = ["IoniconsSwift/*.ttf"]
  s.framework             = "UIKit"
  s.requires_arc          = true
end
