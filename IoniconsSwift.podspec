Pod::Spec.new do |s|
  s.name = 'IoniconsSwift'
  s.version = '2.0.1'
  s.license = 'MIT'
  s.summary = 'Ionicons for Swift and iOS'
  s.authors = { 'Josh Baker' => 'oshbaker77@gmail.com', 'Christophe de BORTOLI' => 'christophe.debortoli@gmail.com' }
  s.homepage = 'http://github.com/cdebortoli/IoniconsSwift'
  s.source = { :git => 'http://github.com/cdebortoli/IoniconsSwift', :tag => '2.0.1' }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.source_files = 'IoniconsSwift'
  s.resources = ['IoniconsSwift/*.ttf']
  s.requires_arc = true
end